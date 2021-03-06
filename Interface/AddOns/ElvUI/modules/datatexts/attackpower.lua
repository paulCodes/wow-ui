local E, L, V, P, G = unpack(select(2, ...)); --Inport: Engine, Locales, PrivateDB, ProfileDB, GlobalDB
local DT = E:GetModule('DataTexts')

local join = string.join
local base, posBuff, negBuff, effective, Rbase, RposBuff, RnegBuff, Reffective, pwr
local displayModifierString = ''
local lastPanel;

local function OnEvent(self, event, unit)
	if E.myclass == "HUNTER" then
		Rbase, RposBuff, RnegBuff = UnitRangedAttackPower("player");
		Reffective = Rbase + RposBuff + RnegBuff;
		pwr = Reffective
	else
		base, posBuff, negBuff = UnitAttackPower("player");
		effective = base + posBuff + negBuff;
		pwr = effective
	end

	self.text:SetFormattedText(displayNumberString, L["AP"], pwr)
	lastPanel = self
end

local function OnEnter(self)
	DT:SetupTooltip(self)

	if E.myclass == "HUNTER" then
		local OverrideAPBySpellPower = GetOverrideAPBySpellPower()
		if (OverrideAPBySpellPower ~= nil) then
			local holySchool = 2;
			-- Start at 2 to skip physical damage
			local spellPower = GetSpellBonusDamage(holySchool);
			for i=(holySchool+1), MAX_SPELL_SCHOOLS do
				spellPower = min(spellPower, GetSpellBonusDamage(i));
			end
			spellPower = min(spellPower, GetSpellBonusHealing()) * OverrideAPBySpellPower;

			DT.tooltip:AddDoubleLine(RANGED_ATTACK_POWER, BreakUpLargeNumbers(spellPower), 1, 1, 1);
		else
			DT.tooltip:AddDoubleLine(RANGED_ATTACK_POWER, BreakUpLargeNumbers(pwr), 1, 1, 1);
		end

		local line = format(RANGED_ATTACK_POWER_TOOLTIP, BreakUpLargeNumbers(max((pwr), 0)/ATTACK_POWER_MAGIC_NUMBER))

		local petAPBonus = ComputePetBonus( "PET_BONUS_RAP_TO_AP", pwr );
		if( petAPBonus > 0 ) then
			line = line .. "\n" .. format(PET_BONUS_TOOLTIP_RANGED_ATTACK_POWER, BreakUpLargeNumbers(petAPBonus));
		end

		local petSpellDmgBonus = ComputePetBonus( "PET_BONUS_RAP_TO_SPELLDMG", pwr );
		if( petSpellDmgBonus > 0 ) then
			line = line .. "\n" .. format(PET_BONUS_TOOLTIP_SPELLDAMAGE, BreakUpLargeNumbers(petSpellDmgBonus));
		end

		DT.tooltip:AddLine(line, nil, nil, nil, true);
	else
		local SpellPowerByAttackPower = GetOverrideSpellPowerByAP()
		local OverrideAPBySpellPower = GetOverrideAPBySpellPower()
		local damageBonus = BreakUpLargeNumbers(max((base+posBuff+negBuff), 0)/ATTACK_POWER_MAGIC_NUMBER);
		local spellPower = 0;
		if (OverrideAPBySpellPower ~= nil) then
			local holySchool = 2;
			-- Start at 2 to skip physical damage
			spellPower = GetSpellBonusDamage(holySchool);
			for i=(holySchool+1), MAX_SPELL_SCHOOLS do
				spellPower = min(spellPower, GetSpellBonusDamage(i));
			end
			spellPower = min(spellPower, GetSpellBonusHealing()) * OverrideAPBySpellPower;
			DT.tooltip:AddDoubleLine(MELEE_ATTACK_POWER, spellPower, 1, 1, 1);
			damageBonus = BreakUpLargeNumbers(spellPower / ATTACK_POWER_MAGIC_NUMBER);
		else
			DT.tooltip:AddDoubleLine(MELEE_ATTACK_POWER, BreakUpLargeNumbers(pwr), 1, 1, 1);
		end

		if (SpellPowerByAttackPower ~= nil) then
			DT.tooltip:AddLine(format(MELEE_ATTACK_POWER_SPELL_POWER_TOOLTIP, damageBonus, BreakUpLargeNumbers(effective * GetOverrideSpellPowerByAP() + 0.5)), nil, nil, nil, true);
		else
			DT.tooltip:AddLine(format(MELEE_ATTACK_POWER_TOOLTIP, damageBonus), nil, nil, nil, true);
		end
	end

	DT.tooltip:Show()
end

local function ValueColorUpdate(hex, r, g, b)
	displayNumberString = join("", "%s: ", hex, "%d|r")

	if lastPanel ~= nil then
		OnEvent(lastPanel)
	end
end
E['valueColorUpdateFuncs'][ValueColorUpdate] = true

--[[
	DT:RegisterDatatext(name, events, eventFunc, updateFunc, clickFunc, onEnterFunc, onLeaveFunc)

	name - name of the datatext (required)
	events - must be a table with string values of event names to register
	eventFunc - function that gets fired when an event gets triggered
	updateFunc - onUpdate script target function
	click - function to fire when clicking the datatext
	onEnterFunc - function to fire OnEnter
	onLeaveFunc - function to fire OnLeave, if not provided one will be set for you that hides the tooltip.
]]
DT:RegisterDatatext('Attack Power', {"UNIT_STATS", "UNIT_AURA", "FORGE_MASTER_ITEM_CHANGED", "ACTIVE_TALENT_GROUP_CHANGED", "PLAYER_TALENT_UPDATE", "UNIT_ATTACK_POWER", "UNIT_RANGED_ATTACK_POWER"}, OnEvent, nil, nil, OnEnter)


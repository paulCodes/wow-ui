--Code to handle triggering alerts off of Vignettes

--Known issues:  VIGNETTE_ADDED does not give useful info for mobs,
--Work around target macro may not be reliable if there are more than one rare mobs around
--No way to filter alerts if a player is not tracking certain mobs.

-------------------------------------------------------------------------------
-- Localized Lua globals.
-------------------------------------------------------------------------------
local _G = getfenv(0)

-- Functions
local pairs = _G.pairs

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...
local L = private.L

local Debug = private.Debug

-------------------------------------------------------------------------------
-- Variables.
-------------------------------------------------------------------------------
local instance_id_registry = {}
local last_vignette_id = 0
local vignette_delay
local vignette_found_count = 0
local delay_time = 300

private.VFrame = _G.CreateFrame("Frame")
private.VFrame:RegisterEvent("VIGNETTE_ADDED")
private.VFrame:RegisterEvent("VIGNETTE_REMOVED")
private.VFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
private.VFrame:RegisterEvent("PLAYER_REGEN_ENABLED")

private.VFrame:SetScript("OnEvent", function(self, event_name, ...)
	if self[event_name] then
		return self[event_name](self, event_name, ...)
	end
end)

function private.VFrame:ZONE_CHANGED_NEW_AREA(event, ...)
	if vignette_delay then
		Debug("Releasing Delay")
		private.VFrame:VIGNETTE_ADDED("VIGNETTE_ADDED", vignette_delay)
		vignette_delay = nil
	end
end

--Clears the last found Vignette mob only after combat has ended.
function private.VFrame:PLAYER_REGEN_ENABLED(event, ...)
	if vignette_found_count == 0 then
		if not _G.InCombatLockdown() then
			last_vignette_id = 0
		end
	end
end

--Checks to see if enough time has elapsed from the first sighting of a vignette before it triggers an alert again.
function private.CheckDelay(instanceid)
	if  not instance_id_registry[instanceid] then
		instance_id_registry[instanceid] = GetTime()
		Debug("Vignette not seen before")
		return true
	else
		local current_time = GetTime()
		local recorded_time = instance_id_registry[instanceid]
		if (current_time - recorded_time) < delay_time then
			Debug("Not enough time elapsed")
			return false
		else
			instance_id_registry[instanceid] = GetTime()
			Debug("Enough time has elapsed, sound alert.")
			return true
		end
	end
end

--Checks to see if achievement mobs are being tracked and filters by zone if an achievement is disabled.
local function VignetteFilterByAchievement()
	local currentzone = _G.GetCurrentMapAreaID()

	if not private.OptionsCharacter.Achievements[private.ACHIEVEMENT_IDS.ONE_MANY_ARMY] and currentzone == private.ZONE_IDS.VALE_OF_ETERNAL_BLOSSOMS then
		Debug("ONE_MANY_ARMY not tracked")
		return false
	elseif not private.OptionsCharacter.Achievements[private.ACHIEVEMENT_IDS.CHAMPIONS_OF_LEI_SHEN] and currentzone == private.ZONE_IDS.ISLE_OF_THUNDER then
		Debug("CHAMPIONS_OF_LEI_SHEN not tracked")
		return false
	elseif not private.OptionsCharacter.Achievements[private.ACHIEVEMENT_IDS.TIMELESS_CHAMPION] and currentzone == private.ZONE_IDS.TIMELESS_ISLE then
		Debug("TIMELESS_CHAMPION not tracked")
		return false
	elseif not private.OptionsCharacter.Achievements[private.ACHIEVEMENT_IDS.GLORIOUS] and (currentzone ~= private.ZONE_IDS.VALE_OF_ETERNAL_BLOSSOMS and currentzone ~= private.ZONE_IDS.TIMELESS_ISLE and currentzone ~= private.ZONE_IDS.ISLE_OF_THUNDER) then
		Debug("GLORIOUS not tracked")
		return false
	else
		Debug("Tracking Mob")
		return true
	end
end


--Updates button to display actual target info
function private.SetVignetteTarget()
	local npc_name = _G.GetUnitName("target")
	local npc_id = private.NPC_NAME_TO_ID[npc_name]

	if _G.UnitIsDead("target") and vignette_found_count > 1 then
		last_vignette_id = npc_id
		private.VignetteBuildList(npc_id)
		private.Button:Update(npc_id, "Vignette Mob", "Unknown Vignette")

		Debug("Mob Dead")
		return
	end

	if npc_id then
		if _G.InCombatLockdown() then
			Debug("Combat LockDown")
			private.Button.PendingID, private.Button.PendingName, private.Button.PendingSource = npc_id, npc_name, "Vignette Mob"
		else
			private.Button:Update(npc_id, npc_name, "Vignette Mob")
		end
		last_vignette_id = npc_id
	end

	Debug("Last ID: " .. last_vignette_id)
end

--Builds a target macro for every rare mob in the current zone
--Hack way to aquire target as the GetVignetteInfoFromInstanceID does not currently return the correct mob info
--Might not work correctly if more than one Vignette is detected

private.macrotext = "/cleartarget"

local MACRO_FORMAT = "%s\n/targetexact %s"

local MANUAL_NPC_ADDITIONS = {
	69768, -- Zandalari Warscout
	69769, -- Zandalari Warbringer
}

function private.VignetteBuildList(instanceid)
	local map_id = _G.GetCurrentMapAreaID()
	local zone_name = _G.GetMapNameByID(map_id)

	private.macrotext = "/cleartarget"

	--Delays alerts on login untill the world so current zone can be properly detected
	if not zone_name then
		vignette_delay = instanceid
		Debug("Build List Delayed")
		return false
	end

	for npc_id, map_zone_name in pairs(private.NPC_ID_TO_MAP_NAME) do
		if zone_name == map_zone_name and npc_id ~= last_vignette_id then
			private.macrotext = MACRO_FORMAT:format(private.macrotext, private.NPC_ID_TO_NAME[npc_id])
		end
	end

	--Manually add Zandalari Warscout & Warbringer due to them appearing in multiple zones but in only one in the data file.
	--Ignore if on Timeless Isle
	if map_id ~= private.ZONE_IDS.TIMELESS_ISLE then
		for index = 1, #MANUAL_NPC_ADDITIONS do
			if last_vignette_id ~= MANUAL_NPC_ADDITIONS[index] then
				private.macrotext = MACRO_FORMAT:format(private.macrotext, private.NPC_ID_TO_NAME[MANUAL_NPC_ADDITIONS[index]])
			end
		end
	end

	private.macrotext = private.macrotext .. "\n/run _G._NPCScan.SetVignetteTarget()"
	return true
end


--_G._NPCScan.macrotext
-- Vignette alert,  VIGNETTE_ADDED Currently does not work corrrectly to bugs with instanceid assignment
-- Will revisit again when 6.0 is released to see if issue is resolved
-- Refrence: http://wowpedia.org/API_C_Vignettes.GetVignetteInfoFromInstanceID
function private.VFrame:VIGNETTE_ADDED(event, instanceid, ...)
	vignette_found_count = vignette_found_count + 1
	Debug("Found: %d  Last ID: %d", vignette_found_count, last_vignette_id)

	if not private.OptionsCharacter.TrackVignettes or
		not instanceid or
		not VignetteFilterByAchievement() or
		-- private.Button:IsShown() or
		_G.GetUnitName("target") == last_vignette_id or
		not private.VignetteBuildList(instanceid) or
		UnitIsDeadOrGhost("player")  or
		not private.CheckDelay(instanceid) then
		return
	end

	local x, y, name, iconid = _G.C_Vignettes.GetVignetteInfoFromInstanceID(instanceid)
	-- iconid seems to be 40:chests, 41:mobs
	if not iconid then --Use case for broken Mob Info
		Debug("Null Mob Data Returned")
		private.Print(L["FOUND_FORMAT"]:format("Vignette Mob"), _G.GREEN_FONT_COLOR)
		private.Button:SetNPC(67490, "Vignette Mob", "Unknown Vignette")
	elseif iconid == 41 then  --Use Case if API returns Mob Info
		Debug("Correct Mob Data Returned")
		private.Print(L["FOUND_FORMAT"]:format("Vignette Mob"), _G.GREEN_FONT_COLOR)
		private.Button:SetNPC(private.NPC_NAME_TO_ID[name], name, "Vignette Mob")
	else -- All other cases
		Debug("Untracked Vigenette")
	end
end

--Clears last seen mob when vignette is removed from map
function private.VFrame:VIGNETTE_REMOVED(event, instanceid, ...)
	vignette_found_count = vignette_found_count - 1
	if vignette_found_count == 0 then
		if not _G.InCombatLockdown() then
			last_vignette_id = 0
		end
	end
end



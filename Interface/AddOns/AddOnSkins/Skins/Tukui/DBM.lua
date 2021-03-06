local AS = unpack(AddOnSkins)

if not (AS:CheckAddOn('DBM-Core') and AS:CheckAddOn('DBM-StatusBarTimers') and AS:CheckAddOn('Tukui')) then return end

function AS:DBM(event, addon)
	if event == 'PLAYER_ENTERING_WORLD' then
		local croprwicons = true
		local buttonsize = 22
		local function SkinBars(self)
			for bar in self:GetBarIterator() do
				if not bar.injected then
					hooksecurefunc(bar, "Update", function()
						local sparkEnabled = bar.owner.options.Style ~= "BigWigs" and bar.owner.options.Spark
						if not (AS:CheckOption('DBMSkinHalf') and sparkEnabled) then return end
						local spark = _G[bar.frame:GetName().."BarSpark"]
						spark:SetSize(12, bar.owner.options.Height*3/2 - 2)
						local a,b,c,d = spark:GetPoint()
						spark:SetPoint(a,b,c,d,0)
					end)
					hooksecurefunc(bar, "ApplyStyle", function()
						local frame = bar.frame
						local tbar = _G[frame:GetName()..'Bar']
						local icon1 = _G[frame:GetName()..'BarIcon1']
						local icon2 = _G[frame:GetName()..'BarIcon2']
						local name = _G[frame:GetName()..'BarName']
						local timer = _G[frame:GetName()..'BarTimer']

						if not icon1.overlay then
							icon1.overlay = CreateFrame('Frame', '$parentIcon1Overlay', tbar)
							AS:SetTemplate(icon1.overlay)
							icon1.overlay:SetFrameLevel(0)
							icon1.overlay:Size(buttonsize)
							icon1.overlay:Point('BOTTOMRIGHT', frame, 'BOTTOMLEFT', -3, 0)
						end

						if not icon2.overlay then
							icon2.overlay = CreateFrame('Frame', '$parentIcon2Overlay', tbar)
							AS:SetTemplate(icon2.overlay)
							icon2.overlay:SetFrameLevel(0)
							icon2.overlay:Size(buttonsize)
							icon2.overlay:Point('BOTTOMLEFT', frame, 'BOTTOMRIGHT', 3, 0)
						end

						AS:SkinTexture(icon1)
						icon1:ClearAllPoints()
						icon1:SetInside(icon1.overlay)

						AS:SkinTexture(icon2)
						icon2:ClearAllPoints()
						icon2:SetInside(icon2.overlay)

						tbar:SetInside(frame)

						frame:SetTemplate('Transparent')

						name:ClearAllPoints()
						name:SetWidth(165)
						name:SetHeight(8)
						name:SetJustifyH('LEFT')
						name:SetShadowColor(0, 0, 0, 0)

						timer:ClearAllPoints()
						timer:SetJustifyH('RIGHT')
						timer:SetShadowColor(0, 0, 0, 0)

						if AS:CheckOption('DBMSkinHalf') then
							frame:SetHeight(buttonsize / 2)
							name:Point('BOTTOMLEFT', frame, 'TOPLEFT', 0, 4)
							timer:Point('BOTTOMRIGHT', frame, 'TOPRIGHT', -1, 2)
						else
							frame:SetHeight(buttonsize)
							name:Point('LEFT', frame, 'LEFT', 4, 0)
							timer:Point('RIGHT', frame, 'RIGHT', -4, 0)
						end

						timer:SetFont(AS.LSM:Fetch('font', AS:CheckOption('DBMFont')), AS:CheckOption('DBMFontSize'), AS:CheckOption('DBMFontFlag'))
						name:SetFont(AS.LSM:Fetch('font', AS:CheckOption('DBMFont')), AS:CheckOption('DBMFontSize'), AS:CheckOption('DBMFontFlag'))

						if bar.owner.options.IconLeft then icon1.overlay:Show() else icon1.overlay:Hide() end
						if bar.owner.options.IconRight then icon2.overlay:Show() else icon2.overlay:Hide() end

						bar.injected = true
					end)
					bar:ApplyStyle()
				end
			end
		end

		local SkinBoss = function()
			local count = 1
			while (_G[format('DBM_BossHealth_Bar_%d', count)]) do
				local bar = _G[format('DBM_BossHealth_Bar_%d', count)]
				local barname = bar:GetName()
				local background = _G[barname..'BarBorder']
				local progress = _G[barname..'Bar']
				local name = _G[barname..'BarName']
				local timer = _G[barname..'BarTimer']
				local pointa, anchor, pointb, _, _ = bar:GetPoint()

				if not pointa then return end
				bar:ClearAllPoints()
				if DBM_SavedOptions.HealthFrameGrowUp or (DBMProfiles and DBMProfiles.db.profile.HealthFrameGrowUp) then
					bar:Point(pointa, anchor, pointb, 0, count == 1 and 12 or 4)
				else
					bar:Point(pointa, anchor, pointb, 0, -(count == 1 and 12 or 4))
				end

				bar:SetTemplate('Transparent')

				background:SetNormalTexture(nil)

				progress:SetStatusBarTexture(AS.NormTex)
				progress:ClearAllPoints()
				progress:SetInside(bar)

				name:ClearAllPoints()
				name:SetJustifyH('LEFT')
				name:SetShadowColor(0, 0, 0, 0)

				timer:ClearAllPoints()
				timer:SetJustifyH('RIGHT')
				timer:SetShadowColor(0, 0, 0, 0)

				if AS:CheckOption('DBMSkinHalf') then
					bar:SetHeight(buttonsize / 3)
					name:Point('BOTTOMLEFT', bar, 'TOPLEFT', 4, 0)
					timer:Point('BOTTOMRIGHT', bar, 'TOPRIGHT', -4, 0)
				else
					bar:SetHeight(buttonsize)
					name:Point('LEFT', bar, 'LEFT', 4, 0)
					timer:Point('RIGHT', bar, 'RIGHT', -4, 0)
				end

				local header = {bar:GetParent():GetRegions()}
				if header and header[1]:IsObjectType('FontString') then
					header[1]:SetFont(AS.LSM:Fetch('font', AS:CheckOption('DBMFont')), AS:CheckOption('DBMFontSize'), AS:CheckOption('DBMFontFlag'))
					header[1]:SetTextColor(1, 1, 1)
					header[1]:SetShadowColor(0, 0, 0, 0)
				end

				name:SetFont(AS.LSM:Fetch('font', AS:CheckOption('DBMFont')), AS:CheckOption('DBMFontSize'), AS:CheckOption('DBMFontFlag'))
				timer:SetFont(AS.LSM:Fetch('font', AS:CheckOption('DBMFont')), AS:CheckOption('DBMFontSize'), AS:CheckOption('DBMFontFlag'))

				count = count + 1
			end
		end

		local function SkinRange(self, range, filter, forceshow, redCircleNumPlayers)
			if DBM.Options.DontShowRangeFrame and not forceshow then return end
			if DBMRangeCheck then
				DBMRangeCheck:SetTemplate('Transparent')
				DBMRangeCheckRadar:SetTemplate('Transparent')
			end
		end

		local function SkinInfo(self, maxLines, event, ...)
			if DBM.Options.DontShowInfoFrame and (event or 0) ~= "test" then return end
			if DBMInfoFrame then
				DBMInfoFrame:SetTemplate('Transparent')
			end
		end

		hooksecurefunc(DBT, 'CreateBar', SkinBars)
		hooksecurefunc(DBM.BossHealth, 'Show', SkinBoss)
		hooksecurefunc(DBM.BossHealth, 'AddBoss', SkinBoss)
		hooksecurefunc(DBM.BossHealth, 'UpdateSettings', SkinBoss)
		hooksecurefunc(DBM.RangeCheck, 'Show', SkinRange)
		hooksecurefunc(DBM.InfoFrame, 'Show', SkinInfo)

		if croprwicons then
			local RaidNotice_AddMessage_ = RaidNotice_AddMessage
			RaidNotice_AddMessage = function(noticeFrame, textString, colorInfo)
				if textString:find('|T') then
					textString = gsub(textString,'(:12:12)',':18:18:0:0:64:64:5:59:5:59')
				end
				return RaidNotice_AddMessage_(noticeFrame, textString, colorInfo)
			end
		end
	end

	if addon == 'DBM-GUI' then
		DBM_GUI_OptionsFrame:HookScript('OnShow', function()
			AS:SkinFrame(DBM_GUI_OptionsFrame)
			AS:SkinFrame(DBM_GUI_OptionsFrameBossMods)
			AS:SkinFrame(DBM_GUI_OptionsFrameDBMOptions)
			AS:SkinFrame(DBM_GUI_OptionsFramePanelContainer)
		end)
		AS:SkinTab(DBM_GUI_OptionsFrameTab1)
		AS:SkinTab(DBM_GUI_OptionsFrameTab2)
		AS:SkinButton(DBM_GUI_OptionsFrameOkay, true)
		AS:SkinButton(DBM_GUI_OptionsFrameWebsiteButton, true)
		AS:SkinScrollBar(DBM_GUI_OptionsFramePanelContainerFOVScrollBar)
		AS:UnregisterSkinEvent('DBM', event)
	end
end

AS:RegisterSkin('DBM', AS.DBM, 'ADDON_LOADED')
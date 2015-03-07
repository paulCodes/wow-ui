local AddOnName, NS = ...
local Title = select(2, GetAddOnInfo(AddOnName))
local Version = GetAddOnMetadata(AddOnName, 'Version')

local MovableFrame = CreateFrame('Frame')

MovableFramesSaved = {}

local HandledFrames = {}

local BlizzardFrames = {
	'AchievementFrame',
	'ArchaeologyFrame',
	'AuctionFrame',
	'AudioOptionsFrame',
	'BankFrame',
	'BarberShopFrame',
	'BlackMarketFrame',
	'BonusRollFrame',
	'BonusRollLootWonFrame',
	'BonusRollMoneyWonFrame',
	'CalendarCreateEventFrame',
	'CalendarFrame',
	'CalendarViewEventFrame',
	'CalendarViewHolidayFrame',
	'ChallengesLeaderboardFrame',
	'CharacterFrame',
	'ClassTrainerFrame',
	'CraftFrame',
	'DressUpFrame',
	'EncounterJournal',
	'FriendsFrame',
	'GameMenuFrame',
	'GhostFrame',
	'GMChatStatusFrame',
	'GMSurveyFrame',
	'GossipFrame',
	'GuildBankFrame',
	'GuildControlUI',
	'GuildFrame',
	'GuildInviteFrame',
	'GuildLogFrame',
	'GuildRegistrarFrame',
	'HelpFrame',
	'InspectFrame',
	'InterfaceOptionsFrame',
	'ItemSocketingFrame',
	'ItemTextFrame',
	'ItemUpgradeFrame',
	'KeyBindingFrame',
	'LFDRoleCheckPopup',
	'LFGDungeonReadyDialog',
	'LFGDungeonReadyStatus',
	'LookingForGuildFrame',
	'LootFrame',
	'LossOfControlFrame',
	'MacOptionsFrame',
	'MacroFrame',
	'MailFrame',
	'MerchantFrame',
	'MissingLootFrame',
	'OpenMailFrame',
	'PetitionFrame',
	'PetJournalParent',
	'PetStableFrame',
	'PlayerTalentFrame',
	'PVEFrame',
	'PVPReadyDialog',
	'PVPUIFrame',
	'QuestChoiceFrame',
	'QuestFrame',
	'QuestLogDetailFrame',
	'QuestLogFrame',
	'RaidBrowserFrame',
	'RaidParentFrame',
	'ReadyCheckFrame',
	'ReforgingFrame',
	'ReportCheatingDialog',
	'ReportPlayerNameDialog',
	'RolePollPopup',
	'ScrollOfResurrectionSelectionFrame',
	'SpellBookFrame',
	'StackSplitFrame',
	'StaticPopup1',
	'TabardFrame',
	'TaxiFrame',
	'TimeManagerFrame',
	'TradeFrame',
	'TradeSkillFrame',
	'TransmogrifyFrame',
	'TutorialFrame',
	'VideoOptionsFrame',
	'VoidStorageFrame',
	'WorldStateAlwaysUpFrame',
	'WorldStateCaptureBar1',
	'WorldStateScoreFrame',
}

local function OnUpdate(self)
	if self.IsMoving then return end
	if MovableFramesSaved[self:GetName()]['Points'] then
		self:ClearAllPoints()
		self:SetPoint(unpack(MovableFramesSaved[self:GetName()]['Points']))
	end
end

local function OnDragStart(self)
	self:StartMoving()
	self.IsMoving = true
	if not MovableFramesSaved[self:GetName()]['Permanent'] then self:SetUserPlaced(false) end
end

local function OnDragStop(self)
	self:StopMovingOrSizing()
	self.IsMoving = false
	if MovableFramesSaved[self:GetName()]['Permanent'] then
		local a, b, c, d, e = self:GetPoint()
		b = self:GetParent():GetName()
		if self:GetName() == 'QuestFrame' or self:GetName() == 'GossipFrame' then
			MovableFramesSaved['GossipFrame'].Points = {a, b, c, d, e}
			MovableFramesSaved['QuestFrame'].Points = {a, b, c, d, e}
		else
			MovableFramesSaved[self:GetName()].Points = {a, b, c, d, e}
		end
	end
end

local function MakeMovable(Frame)
	if HandledFrames then
		for _, Handled in pairs(HandledFrames) do
			if Frame:GetName() == Handled then return end
		end
	end

	if IsAddOnLoaded('ElvUI') and Frame:GetName() == 'LossOfControlFrame' then return end

	if Frame:GetName() == 'AchievementFrame' then AchievementFrameHeader:EnableMouse(false) end

	if Frame:GetName() == 'WorldStateCaptureBar1' then
		MovableFrame:UnregisterEvent('UPDATE_WORLD_STATES')
		MovableFrame:UnregisterEvent('WORLD_STATE_TIMER_START')
		MovableFrame:UnregisterEvent('WORLD_STATE_UI_TIMER_UPDATE')
	end

	Frame:EnableMouse(true)
	Frame:SetMovable(true)
	Frame:RegisterForDrag('LeftButton')
	Frame:SetClampedToScreen(true)
	Frame:HookScript('OnUpdate', OnUpdate)
	Frame:HookScript('OnDragStart', OnDragStart)
	Frame:HookScript('OnDragStop', OnDragStop)
	if Frame:GetName() == 'WorldStateAlwaysUpFrame' then
		Frame:HookScript('OnEnter', function(self) self:SetTemplate() end)
		Frame:HookScript('OnLeave', function(self) self:StripTextures() end)
	end
	tinsert(HandledFrames, Frame:GetName())
end

local function MovableFramesOptions()
	local Ace3OptionsPanel = IsAddOnLoaded('ElvUI') and ElvUI[1] or Enhanced_Config[1]

	Ace3OptionsPanel.Options.args.movableframes = {
		order = 100,
		type = 'group',
		name = Title,
		args = {
			permanent = {
				order = 1,
				type = 'group',
				name = 'Permanent Moving',
				guiInline = true,
				args = {},
			},
			reset = {
				order = 2,
				type = 'group',
				name = 'Reset Moving',
				args = {},
			},
		},
	}

	for k, v in pairs(BlizzardFrames) do
		Ace3OptionsPanel.Options.args.movableframes.args.permanent.args[v] = {
			order = k,
			type = 'toggle',
			name = v,
			get = function(info) return MovableFramesSaved[info[#info]]['Permanent'] end,
			set = function(info, value) MovableFramesSaved[info[#info]]['Permanent'] = value end,
		}
		Ace3OptionsPanel.Options.args.movableframes.args.reset.args[v] = {
			order = k,
			type = 'execute',
			name = v,
			disabled = function() return not MovableFramesSaved[v]['Permanent'] end,
			func = function() MovableFramesSaved[v]['Points'] = nil end,
		}
	end
end

MovableFrame:RegisterEvent('PLAYER_ENTERING_WORLD')
MovableFrame:SetScript('OnEvent', function(self, event, name)
	if event == 'PLAYER_ENTERING_WORLD' then
		self:RegisterEvent('UPDATE_WORLD_STATES')
		self:RegisterEvent('WORLD_STATE_TIMER_START')
		self:RegisterEvent('WORLD_STATE_UI_TIMER_UPDATE')
		self:RegisterEvent('ADDON_LOADED')
		if ElvUI then
			LibStub('LibElvUIPlugin-1.0'):RegisterPlugin(AddOnName, MovableFramesOptions)
		end
		self:UnregisterEvent('PLAYER_ENTERING_WORLD')
	end
	for _, object in pairs(BlizzardFrames) do
		if MovableFramesSaved[object] == nil then MovableFramesSaved[object] = {} end
		if MovableFramesSaved[object]['Permanent'] == nil then MovableFramesSaved[object]['Permanent'] = false end
		if _G[object] then
			MakeMovable(_G[object])
		end
	end
end)
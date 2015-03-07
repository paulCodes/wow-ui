local D, C, L, G = unpack(select(2, ...))
if not C["misc"].flightpoint then return end

local taxinodeinfos = {}
local firstshow = false
FlightPoints_Config = {}
FlightPoints_Config.notexpanded = {}

function FlightPoints_OnLoad(self)
	self:RegisterEvent("TAXIMAP_OPENED")
	self:RegisterEvent("TAXIMAP_CLOSED")
	self:RegisterEvent("ADDON_LOADED")
	FlightPointsTaxiChoiceContainerScrollBar.Show = function(self)
		FlightPointsTaxiChoiceContainer:SetPoint("BOTTOMRIGHT", FlightPointsTaxiChoice, "BOTTOMRIGHT", -23, 4)
		for _, button in next, _G["FlightPointsTaxiChoiceContainer"].buttons do
			button:SetWidth(228)
		end
		FlightPointsTaxiChoiceContainer.scrollChild:SetWidth(228)
		getmetatable(self).__index.Show(self)
	end

	FlightPointsTaxiChoiceContainerScrollBar.Hide = function (self)
		FlightPointsTaxiChoiceContainer:SetPoint("BOTTOMRIGHT", FlightPointsTaxiChoice, "BOTTOMRIGHT", -4, 4)
		for _, button in next, FlightPointsTaxiChoiceContainer.buttons do
			button:SetWidth(250)
		end
		FlightPointsTaxiChoiceContainer.scrollChild:SetWidth(250)
		getmetatable(self).__index.Hide( self )
	end
	FlightPointsTaxiChoiceContainer.update = FlightPointsTaxiChoiceContainer_Update
end

function FlightPointsTaxiChoiceButton_OnLoad(self)
	local name = self:GetName()
	self.name = _G[name.."Name"]
	self.expandIcon = _G[name.."ExpandIcon"]
	self.highlight = _G[name.."Highlight"]
	self.stripe = _G[name.."Stripe"]
end

function FlightPoints_Show()
	if not FlightPointsTaxiChoiceContainer.buttons then
		HybridScrollFrame_CreateButtons(FlightPointsTaxiChoiceContainer, "FlightPointsButtonTemplate", 1, -2, "TOPLEFT", "TOPLEFT", 0, 0)
	end
	FlightPointsTaxiChoiceContainer_Update()
end

function FlightPoints_GetFlight(index)
	if taxinodeinfos[index] then
		return taxinodeinfos[index].name, taxinodeinfos[index].isheader, taxinodeinfos[index].flightid, taxinodeinfos[index].isexpanded
	else
		return nil
	end
end

function FlightPointsTaxiChoiceContainer_Update()
	if not FlightPointsTaxiChoiceContainer.buttons then
		return
	end
	local buttons = FlightPointsTaxiChoiceContainer.buttons
	local button = buttons[1]
	local scrollFrame = FlightPointsTaxiChoiceContainer
	local offset = HybridScrollFrame_GetOffset(scrollFrame)
	local buttons = scrollFrame.buttons
	local numButtons = #buttons
	local name, isHeader, flightpathid, isExpanded
	local button, index
	local hidebuttons = false
	local displayedHeight = 0
	for i = 1, numButtons do
		index = offset + i
		name, isHeader, flightpathid, isExpanded = FlightPoints_GetFlight(index)
		button = buttons[i]

		if not name or name == "" then
			button:Hide()
		else
			if isHeader then
				button.categoryLeft:Show()
				button.categoryRight:Show()
				button.categoryMiddle:Show()
				button.expandIcon:Show()

				if isExpanded then
					hidebuttons = false
					button.expandIcon:SetTexCoord(.5625, 1, 0, .4375)
				else
					hidebuttons = true;
					button.expandIcon:SetTexCoord(0, .4375, 0, .4375)
				end

				button.highlight:SetTexture("Interface\\TokenFrame\\UI-TokenFrame-CategoryButton")
				button.highlight:SetPoint("TOPLEFT", button, "TOPLEFT", 3, -2)
				button.highlight:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", -3, 2)
				button.name:SetText(name)
				button.name:SetFontObject("GameFontNormal")
				button.name:SetPoint("LEFT", 22, 0)
			else
				button.categoryLeft:Hide()
				button.categoryRight:Hide()
				button.categoryMiddle:Hide()
				button.expandIcon:Hide()
				button.highlight:SetTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight")
				button.highlight:SetPoint("TOPLEFT", button, "TOPLEFT", 0, 0)
				button.highlight:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 0, 0)
				button.name:SetText(name)
				button.name:SetPoint("LEFT", 11, 0)
				button.flightpath = flightpathid
				button.name:SetFontObject("GameFontHighlight")
			end
			button.isHeader = isHeader
			button.isExpanded = isExpanded
			button.flightpathname = name
			button:Show()
		end
		displayedHeight = displayedHeight + button:GetHeight()
	end
	local totalHeight = #taxinodeinfos * (button:GetHeight())
	HybridScrollFrame_Update(scrollFrame, totalHeight, displayedHeight)
end

function FlightPointsTaxiChoiceButton_OnEnter(self)
	if not self.isHeader then
		TaxiNodeOnButtonEnter(_G["TaxiButton" .. self.flightpath])
	end
end

function FlightPointsTaxiChoiceButton_OnLeave(self)
	GameTooltip:Hide()
end

function FlightPointsTaxiChoiceButton_OnClick(self, button, down)
	if self.isHeader then
		if self.isExpanded then
			FlightPoints_Config.notexpanded[self.flightpathname] = true
		else
			FlightPoints_Config.notexpanded[self.flightpathname] = nil
		end
		FlightPoints_CreateFlyPathTable()
		FlightPointsTaxiChoiceContainer_Update()
	else
		TakeTaxiNode(self.flightpath)
	end
end

function FlightPoints_TakeFlyPath(self) 
	TakeTaxiNode(self.value)
end

local function pairsByKeys(t, f)
	local a = {}
	for n in pairs(t) do
		table.insert(a, n)
	end
	table.sort(a, f)
	local i = 0
	local iter = function ()
		i = i + 1
		if a[i] == nil then
			return nil
		else
			return a[i], t[a[i]]
		end
	end
	return iter
end

function FlightPoints_CreateFlyPathTable()
	local tmptaxinode={}
	taxinodeinfos = {}
	for i = 1, NumTaxiNodes() do
		if TaxiNodeGetType(i) == "REACHABLE" then
			local match1, match2 = strmatch(TaxiNodeName(i), "^(.*),(.*)")
			if match2 == nil then
				match1 = TaxiNodeName(i)
				match2 = TaxiNodeName(i)
			end
			match1 = strtrim(match1)
			match2 = strtrim(match2)
			if not taxinodeinfos[match2] then
				taxinodeinfos[match2] = {}
			end
			taxinodeinfos[match2][match1] = i
		end
	end
	local runs = 1

	for key, val in pairsByKeys(taxinodeinfos) do
		tmptaxinode[runs] = {}
		tmptaxinode[runs].name = key
		tmptaxinode[runs].isheader = true
		tmptaxinode[runs].flightid = 0
		if not FlightPoints_Config.notexpanded[key] and FlightPoints_Config.alwayscollapse == nil or firstshow == false then
			tmptaxinode[runs].isexpanded = true
			runs = runs + 1
			for key2, val2 in pairsByKeys(val) do
				tmptaxinode[runs] = {}
				tmptaxinode[runs].name = key2
				tmptaxinode[runs].isheader = false
				tmptaxinode[runs].flightid = val2
				tmptaxinode[runs].isexpanded = true
				runs = runs + 1
			end
		else
			if FlightPoints_Config.alwayscollapse == 1 then
				FlightPoints_Config.notexpanded[key] = true
			end
			tmptaxinode[runs].isexpanded = false
			runs = runs + 1
		end
	end
	taxinodeinfos = tmptaxinode
	firstshow = false
end

function FlightPoints_OnEvent(self, event, ...)
	if event == "TAXIMAP_OPENED" then
		firstshow = true
		FlightPoints_CreateFlyPathTable()
		FlightPointsTaxiChoice:SetHeight(TaxiFrame:GetHeight() - 24)
		FlightPointsTaxiChoice:SetWidth(250)
		FlightPointsTaxiChoice:ClearAllPoints()
		FlightPointsTaxiChoice:SetPoint("TOPLEFT", TaxiFrame, "BOTTOMRIGHT", 0, TaxiFrame:GetHeight() - 22)
		FlightPointsTaxiChoice:Show()
		FlightPointsTaxiChoice:StripTextures()
		FlightPointsTaxiChoice:SetTemplate("Transparent")
		FlightPointsTaxiChoice.CloseButton:SkinCloseButton()
		FlightPointsTaxiChoiceContainerScrollBar:SkinScrollBar()
	elseif event == "TAXIMAP_CLOSED" then
		FlightPointsTaxiChoice:Hide()
		taxinodeinfos = {}
	elseif event == "ADDON_LOADED" then
		local arg1 = ...
		if arg1 == "FlightPoints" then
			FlightPointsTaxiChoiceCollapseOnShow:SetChecked(FlightPoints_Config.alwayscollapse)
			self:UnregisterEvent("ADDON_LOADED")
		end	
	end
end
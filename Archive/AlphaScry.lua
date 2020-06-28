ASY = {}

ASY.name = 'AlphaScry'
ASY.displayname = 'AlphaScry'
ASY.version = 'v0.0.1'
ASY.author = 'mesota'
ASY.init = false
ASY.accountVariableVersion = 1
ASY.characterVariableVersion = 1
ASY.isDebug = true
ASY.isShowAll = false


-- ESO globals
local EM, WM, SM = EVENT_MANAGER, WINDOW_MANAGER, SCENE_MANAGER
local AM = ANTIQUITY_MANAGER
local ADM = ANTIQUITY_DATA_MANAGER -- ZO_AntiquityDataManager

--- Writes trace messages to the console
-- fmt with %d, %s,
local function trace(fmt, ...)
	if ASY.isDebug then
		d(string.format(fmt, ...))
    end
end


function ASY.ToggleDebug(extra)
    ASY.isDebug = not ASY.isDebug
    if ASY.isDebug then
        d("AlphaScry: debug messages ON")
    else
        d("AlphaScry: debug messages OFF")
    end
end


-- UI-Funktionalität ----------------------------------
function ASY.OnInitMain()
    trace('OnInitMain')
    SM:RegisterTopLevel(ASY_Main, true)

--	ASUI.InitStyleSetDetails()
--	zo_callLater(ASUI.ShowStyleSetsTab, 1000)
ASY.scryableAntiquityTileControlPool = ZO_ControlPool:New("ZO_ScryableAntiquityTileControl_Keyboard", ASY.contentListScrollChild, "ScryableAntiquity")
--ASY.scryableAntiquityTileControlPool:SetCustomFactoryBehavior(function(control) control.owner:SetupProgressIconMetaPool(ASY.progressIconControlPool) end)
--ASY.scryableAntiquityTileControlPool:SetCustomResetBehavior(ResetTileControl)

end


function ASY.HideMain()
	trace('HideMain')
	SM:ToggleTopLevel(ASY_Main)

end

function ASY.ToggleMainWindow ()
    trace('ToggleMain')
	SM:ToggleTopLevel(ASY_Main)
	if not ASY_Main:IsHidden() then
		-- ASY.ShowStyleSetsTab() 
	end

end



--------------------------------------------------------
-- Liefert bool, ob eine Antiquität erspäht werden kann.
function ASY.IsScryable(antiquityData)
    return not antiquityData:HasAchievedAllGoals() and antiquityData:MeetsLeadRequirements() and antiquityData:MeetsScryingSkillRequirements() -- and antiquityData:MeetsAllScryingRequirements()
end

-------------------------------------------------------
-- Liefert den Namen einer Quality
function ASY.GetQualityString(Quality)
    local QUALITY = {
        [0]={"weiss"},
        [1]={"grün"},
        [2]={"blau"},
        [3]={"lila"},
        [4]={"gold"},
        [5]={"orange"},
        [6]={"rot"}
    }
    return unpack(QUALITY[Quality])
end

-----------------------------------------------------
-- Listet alle Spuren auf, die erspähbar sind.
function ASY.ListHints()
    for antiquityId, antiquityData in pairs (ADM.antiquities) do
--        trace ("A: %s", ADM.antiquities [i].name)
        if antiquityData:HasDiscovered () then
            if ASY.IsScryable(antiquityData) then
                local zoneName = GetZoneNameById(antiquityData.zoneId)
                trace ("Id: %d - ZoneName: %s - Name: %s - Diff: %s", antiquityId, zoneName, antiquityData.name, ASY.GetQualityString (antiquityData:GetQuality()))
               -- trace ("IsScryable: %s", tostring(ASY.IsScryable(antiquityData)))
            end
            -- .needsCombination
            -- 
        end
                -- https://github.com/esoui/esoui/blob/master/esoui/ingame/antiquities/antiquitydata.lua
    end
end

--[[ original code
function ZO_Antiquity:MeetsAllScryingRequirements()
    local scryingResult = MeetsAntiquityRequirementsForScrying(self:GetId(), ZO_ExplorationUtils_GetPlayerCurrentZoneId())
    return scryingResult == ANTIQUITY_SCRYING_RESULT_SUCCESS
end
--]]


function ASY:SuperMeetsAllScryingRequirements()
    return not self:HasAchievedAllGoals() and self:MeetsLeadRequirements() and self:MeetsScryingSkillRequirements() -- and self:GetQuality() > 1
end



function ASY.ToggleShowAll()
    trace ("Toggle Show All")
    ASY.isShowAll = not ASY.isShowAll

    local filterfunc

    if ASY.isShowAll then
        filterfunc = ASY.SuperMeetsAllScryingRequirements
        ASY.ToggleButton:SetState(BSTATE_PRESSED)
    else
        filterfunc = ZO_Antiquity.MeetsAllScryingRequirements
        ASY.ToggleButton:SetState(BSTATE_NORMAL)
    end

    for _, antiquityData in pairs (ADM.antiquities) do
        antiquityData.MeetsAllScryingRequirements = filterfunc
    end

    ADM:RefreshAll()
end

function ASY.InitButton()
    -- create button
    local cParent = WM:GetControlByName("ZO_AntiquityJournal_Keyboard_TopLevelContents")
    local cSearch = cParent:GetNamedChild("Search")

    local c = WM:CreateControl('ASY_ToggleButton', cParent, CT_BUTTON)
    c:SetAnchor(BOTTOMRIGHT, cSearch, TOPRIGHT, 0, 0)
    c:SetDimensions(25, 25)
    c:SetNormalTexture('esoui/art/inventory/inventory_tabicon_all_up.dds')
    c:SetPressedTexture('esoui/art/inventory/inventory_tabicon_all_down.dds')
    c:SetMouseOverTexture('esoui/art/inventory/inventory_tabicon_all_over.dds')
    c:SetHandler('OnClicked',function() ASY.ToggleShowAll() end)

    ASY.ToggleButton = c
end



function ASY:Initialize()

--    SLASH_COMMANDS["/alphascry"] = ASY.ListHints
	SLASH_COMMANDS["/asydbg"] = ASY.ToggleDebug
--    SLASH_COMMANDS["/asydialog"] = ASY.ToggleMainWindow
--    SLASH_COMMANDS["/asytsa"] = ASY.ToggleShowAll
    
    -- Create Key Binding Labels
    ZO_CreateStringId('SI_BINDING_NAME_ALPHASCRY_LIST_HINTS', "Show Hints")	

    -- initialize toggle button
	zo_callLater(ASY.InitButton, 900)

    ASY.init = true
end

function ASY.OnAddOnLoaded(event, addonName)
  if addonName ~= ASY.name then return end

  EM:UnregisterForEvent('ASY_LOADED',EVENT_ADD_ON_LOADED)
  
  ASY:Initialize()
end


EM:RegisterForEvent('ASY_LOADED', EVENT_ADD_ON_LOADED, ASY.OnAddOnLoaded)


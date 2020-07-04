--[[

Dialog to change filter settings

--]]

ASYCFD = {}

function ASYCFD:Commit(control)

    local ctrlContent = GetControl(control, "Content")

    local function getCheckState(name)
        local check = GetControl(ctrlContent, name)
        return ZO_CheckButton_IsChecked(check)
    end


	local scryFilter = ASY.scryFilter

    scryFilter.showInProgress = getCheckState("ShowInProgressCheck")
    scryFilter.showAvailable = getCheckState("ShowAvailableCheck")
    scryFilter.showRequiresLead = getCheckState("ShowRequiresLeadCheck")
    scryFilter.showAllZones = getCheckState("ShowAllZonesCheck")
	
    ASY.ApplyFilter()
end

function ASYCFD:Setup(control)
    local ctrlContent = GetControl(control, "Content")

    local function setCheckState (name, checked)
        local check = GetControl(ctrlContent, name)
    
        if (checked) then
            ZO_CheckButton_SetChecked(check)
        else
            ZO_CheckButton_SetUnchecked(check)
        end    
    end


	local scryFilter = ASY.scryFilter

    setCheckState ("ShowInProgressCheck",scryFilter.showInProgress)
    setCheckState ("ShowAvailableCheck",scryFilter.showAvailable)
    setCheckState ("ShowRequiresLeadCheck",scryFilter.showRequiresLead)
    setCheckState ("ShowAllZonesCheck",scryFilter.showAllZones)
end


function ASYCFD.Initialize()
	local control = ASYChangeFilterDialog

    ZO_Dialogs_RegisterCustomDialog("ASY_CHANGE_FILTER_DIALOG", {
        customControl = control,
        title = { text = "Scryables Filter Properties" },
		setup = function(self) ASYCFD:Setup(control) end,
        buttons =
        {
            {
                control =   GetControl(control, "Accept"),
                text =      SI_DIALOG_ACCEPT,
                keybind =   "DIALOG_PRIMARY",
                callback =  function(dialog)
                                ASYCFD:Commit(control)
                            end,
            },  
            {
                control =   GetControl(control, "Cancel"),
                text =      SI_DIALOG_CANCEL,
                keybind =   "DIALOG_NEGATIVE",
                callback =  function(dialog)
                            end,
            },
		
        },
    })
end

ASYCFD.Initialize()
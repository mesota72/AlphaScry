std = {"max"}

-- these globals can be set and accessed.
globals = {

-- LibAdonMenu
    "LibAddonMenu2",

-- ESO UI
    "SLASH_COMMANDS",
    "KEYBINDING_MANAGER",
    "ZO_SavedVars",

-- AlphaScry
"ASY", 
"ASY_Main",   
}

-- these globals can only be accessed.
read_globals = {
    "",
    "",
    "",
    "",

-- ESO API
    "GuiRoot",
    "ZO_PlayerInventoryBackpack",
    "ZO_PlayerBankBackpack",
    "ZO_SmithingTopLevelDeconstructionPanelInventoryBackpack",
    "ZO_SmithingTopLevelImprovementPanelInventoryBackpack",
    "zo_strformat",
    "ZO_OUTFIT_MANAGER",
    "ZO_AntiquityDataManager",
    "ZO_ControlPool",
    "ANTIQUITY_DATA_MANAGER",
    "EVENT_MANAGER",
    "ANTIQUITY_MANAGER",
    "WINDOW_MANAGER",
    "SCENE_MANAGER",
    "PLAYER_INVENTORY",
    "EQUIP_SLOT_MAIN_HAND",
    "EQUIP_SLOT_OFF_HAND",
    "EQUIP_SLOT_BACKUP_OFF",
    "EQUIP_SLOT_BACKUP_MAIN",
    "EQUIP_SLOT_HEAD",
    "EQUIP_SLOT_CHEST",
    "EQUIP_SLOT_LEGS",
    "EQUIP_SLOT_SHOULDERS",
    "EQUIP_SLOT_FEET",
    "EQUIP_SLOT_WAIST",
    "EQUIP_SLOT_HAND",
    "EQUIP_SLOT_NECK",
    "EQUIP_SLOT_RING1",
    "EQUIP_SLOT_RING2",
    "EQUIP_SLOT_POISON",
    "EQUIP_SLOT_BACKUP_POISON",
    "d",
    "ZO_CreateStringId",
    "GetItemLinkQuality",
    "CT_TEXTURE",
    "CT_LABEL",
    "TOPRIGHT",
    "TEXT_ALIGN_RIGHT",
    "TOPLEFT",
    "GetItemType",
    "GetItemLink",
    "Id64ToString",
    "GetItemUniqueId",
    "GetZoneNameById",
    "ITEMTYPE_POISON",
    "GetItemLinkEquipType",
    "EQUIP_TYPE_TWO_HAND",
    "EQUIP_TYPE_ONE_HAND",
    "EQUIP_TYPE_OFF_HAND",
    "CT_BUTTON",
    "CT_BACKDROP",
    "GetItemInstanceId",
    "BAG_WORN",
    "GetSlotBoundId",
    "ZO_PreHookHandler",
    "zo_callLater",
    "EVENT_GLOBAL_MOUSE_UP",
    "ZO_Skills",
    "ZO_PlayerInventory",
    "ZO_ChampionPerks",
    "LEFT",
    "ANIMATION_MANAGER",
    "ANIMATION_SIZE",
    "ANIMATION_ALPHA",
    "EVENT_ACTION_SLOTS_FULL_UPDATE",
    "EVENT_INVENTORY_FULL_UPDATE",
    "EVENT_PLAYER_COMBAT_STATE",
    "EVENT_INVENTORY_ITEM_DESTROYED",
    "EVENT_INVENTORY_SINGLE_SLOT_UPDATE",
    "EVENT_OPEN_BANK",
    "EVENT_CLOSE_BANK",
    "EVENT_CURSOR_PICKUP",
    "EVENT_CURSOR_DROPPED",
    "PlaySound",
    "ITEMTYPE_ARMOR",
    "ITEMTYPE_WEAPON",
    "EQUIP_TYPE_HEAD",
    "EQUIP_TYPE_CHEST",
    "EQUIP_TYPE_LEGS",
    "EQUIP_TYPE_SHOULDERS",
    "EQUIP_TYPE_FEET",
    "EQUIP_TYPE_WAIST",
    "EQUIP_TYPE_NECK",
    "EQUIP_TYPE_RING",
    "EQUIP_TYPE_MAIN_HAND",
    "EQUIP_TYPE_POISON",
    "EQUIP_TYPE_HAND",
    "MOUSE_CONTENT_EQUIPPED_ITEM",
    "MOUSE_CONTENT_INVENTORY_ITEM",
    "RIGHT",
    "SHARED_INVENTORY",
    "BAG_BACKPACK",
    "IsItemSoulGem",
    "GetSoulGemItemInfo",
    "SOUL_GEM_TYPE_FILLED",
    "WEAPONTYPE_NONE",
    "WEAPONTYPE_DAGGER",
    "WEAPONTYPE_HAMMER",
    "WEAPONTYPE_AXE",
    "WEAPONTYPE_SWORD",
    "WEAPONTYPE_TWO_HANDED_HAMMER",
    "WEAPONTYPE_TWO_HANDED_AXE",
    "WEAPONTYPE_TWO_HANDED_SWORD",
    "WEAPONTYPE_FIRE_STAFF",
    "WEAPONTYPE_FROST_STAFF",
    "WEAPONTYPE_LIGHTNING_STAFF",
    "WEAPONTYPE_HEALING_STAFF",
    "WEAPONTYPE_BOW",
    "WEAPONTYPE_SHIELD",
    "GetItemLinkWeaponType",
    "ClearCursor",
    "GetCursorContentType",
    "MOUSE_CONTENT_ACTION",
    "GetBankingBag",
    "BAG_BANK",
    "BAG_SUBSCRIBER_BANK",
    "GetItemLinkSetInfo",
    "GetAbilityProgressionXPInfoFromAbilityId",
    "GetSkillAbilityIndicesFromProgressionIndex",
    "GetNumSkillTypes",
    "GetNumSkillLines",
    "GetNumSkillAbilities",
    "GetSkillAbilityInfo",
    "GetAbilityProgressionInfo",
    "GetAbilityProgressionAbilityId",
    "GetAbilityProgressionAbilityInfo",
    "CallSecureProtected",
    "ZO_ComboBox_ObjectFromContainer",
    "ZO_ComboBox",
    "ZO_COMBOBOX_SUPRESS_UPDATE",
    "UnequipOutfit",
    "IsUnitInCombat",
    "AreActionBarsLocked",
    "ArePlayerWeaponsSheathed",
    "TogglePlayerWield",
    "GetActiveWeaponPairInfo",
    "FindFirstEmptySlotInBag",
    "GetNumBagFreeSlots",
    "IsItemStolen",
    "EquipItem",
    "GetGameTimeMilliseconds",
    "ANIMATION_TRANSLATE",
    "ZO_GenerateCubicBezierEase",
    "DoesItemHaveDurability",
    "GetItemCondition",
    "GetItemRepairCost",
    "GetItemLinkRequiredLevel",
    "GetItemLinkRequiredChampionPoints",
    "GetPlayerChampionPointsEarned",
    "GetUnitLevel",
    "ZO_Character_IsReadOnly",
    "ZO_Antiquity",
    "GetItemLinkCondition",
    "EQUIP_SLOT_COSTUME",
    "GetItemLinkCondition",
    "GetActionIndicesFromName",
    "GetActionBindingInfo",
    "KEY_INVALID",
    "ZO_Keybindings_DoesKeyMatchAnyModifiers",
    "GetKeyName",
    "KEY_SHIFT",
    "KEY_CTRL",
    "KEY_ALT",
    "GetString",
    "SI_KEYCODEALT",
    "SI_KEYCODECTRL",
    "SI_KEYCODESHIFT",
    "GetAbilityInfoByIndex",
    "GetItemLinkInfo",
    "GetControl",
    "SI_DIALOG_CANCEL",
    "SI_DIALOG_ACCEPT",
    "ZO_Dialogs_RegisterCustomDialog",
    "ZO_Dialogs_ShowDialog",
    "IsHouseBankBag",
    "GetCurrentMoney",
    "RepairItem",
    "CanStoreRepair",
    "GetBagSize",
    "GetItemName",
    "IsItemChargeable",
    "GetChargeInfoForItem",
    "GetItemInfo",
    "ChargeItemWithSoulGem",
    "GetItemPairedPoisonInfo",
    "ACTIVE_WEAPON_PAIR_MAIN",
    "HasItemInSlot",
    "ACTIVE_WEAPON_PAIR_BACKUP",
    "REGISTER_FILTER_BAG_ID",
    "EVENT_NEW_MOVEMENT_IN_UI_MODE",
    "EVENT_OPEN_STORE",
    "ActionButton8",
    "MOUSE_BUTTON_INDEX_LEFT",
    "MOUSE_BUTTON_INDEX_RIGHT",
    "GetItemId",
    "GetAbilityIdByIndex",
    "GetSpecificSkillAbilityKeysByAbilityId",
    "ACTIVE_WEAPON_PAIR_NONE",
    "IsBlockActive",
    "ItemTooltip",
    "InitializeTooltip",
    "ZO_ItemTooltip_ClearCondition",
    "ZO_ItemTooltip_ClearCharges",
    "SkillTooltip",
    "InformationTooltip",
    "SetTooltipText",
    "ClearTooltip",
    "BOTTOMLEFT",
    "BOTTOMRIGHT",
    "BSTATE_PRESSED",
    "BSTATE_NORMAL",
    "DoesAbilityExist",
    "GetAbilityName",
    "EVENT_ADD_ON_LOADED",
    "SI_NO_OUTFIT_EQUIP_ENTRY",
    "GetNumChampionDisciplines",
    "GetNumChampionDisciplineSkills",
    "",
    "",
    "",
    "",


-- lua tools
    "table",
    "pairs",
    "unpack",
    "string",
    "tonumber",
    "math",
    "select",
    "tostring",
    "",
    "",
    "",
    "",
}


 ignore = {
    "612", -- A line contains trailing whitespace.
    "611", -- A line consists of nothing but whitespace.
    "631", -- Line is too long.
    "212", -- unused argument
    "542", -- An empty if branch.
    "614", -- Trailing whitespace in a comment.
    "311", -- Value assigned to a local variable is unused.
    "211", -- Local variable is set but never accessed.
}

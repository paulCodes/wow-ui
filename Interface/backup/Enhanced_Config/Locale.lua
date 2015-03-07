if not (Tukui or AsphyxiaUI or DuffedUI) then return end
local AceLocale = LibStub:GetLibrary("AceLocale-3.0")
local L = AceLocale:NewLocale("Enhanced_Config", "enUS", true, true)
local Locale = GetLocale()

L["Version"] = true
L["Coding:"] = true
L["Credits"] = true

L["Add Group"] = "Add Group"
L["Attempted to show a reminder icon that does not have any spells. You must add a spell first."] = "Attempted to show a reminder icon that does not have any spells. You must add a spell first."
L["Change this if you want the Reminder module to check for weapon enchants, setting this will cause it to ignore any spells listed."] = "Change this if you want the Reminder module to check for weapon enchants, setting this will cause it to ignore any spells listed."
L["Combat"] = "Combat"
L["Disable Sound"] = "Disable Sound"
L["Don't play the warning sound."] = "Don't play the warning sound."
L["Group already exists!"] = "Group already exists!"
L["If any spell found inside this list is found the icon will hide as well"] = "If any spell found inside this list is found the icon will hide as well"
L["Inside BG/Arena"] = "Inside BG/Arena"
L["Inside Raid/Party"] = "Inside Raid/Party"
L["Instead of hiding the frame when you have the buff, show the frame when you have the buff."] = true
L["Level Requirement"] = "Level Requirement"
L["Level requirement for the icon to be able to display. 0 for disabled."] = "Level requirement for the icon to be able to display. 0 for disabled."
L["Negate Spells"] = "Negate Spells"
L["New ID (Negate)"] = "New ID (Negate)"
L["Only run checks during combat."] = "Only run checks during combat."
L["Only run checks inside BG/Arena instances."] = "Only run checks inside BG/Arena instances."
L["Only run checks inside raid/party instances."] = "Only run checks inside raid/party instances."
L["REMINDER_DESC"] = "This module will show warning icons on your screen when you are missing buffs or have buffs when you shouldn't."
L["Remove ID (Negate)"] = "Remove ID (Negate)"
L["Reverse Check"] = "Reverse Check"
L["Set a talent tree to not follow the reverse check."] = "Set a talent tree to not follow the reverse check."
L["Sound"] = "Sound"
L["Sound that will play when you have a warning icon displayed."] = "Sound that will play when you have a warning icon displayed."
L["Spell"] = "Spell"
L["Strict Filter"] = "Strict Filter"
L["Talent Tree"] = "Talent Tree"
L["This ensures you can only see spells that you actually know. You may want to uncheck this option if you are trying to monitor a spell that is not directly clickable out of your spellbook."] = "This ensures you can only see spells that you actually know. You may want to uncheck this option if you are trying to monitor a spell that is not directly clickable out of your spellbook."
L["Tree Exception"] = "Tree Exception"
L["Weapon"] = "Weapon"
L["You can't remove a default group from the list, disabling the group."] = "You can't remove a default group from the list, disabling the group."
L["You must be a certain role for the icon to appear."] = "You must be a certain role for the icon to appear."
L["You must be using a certain talent tree for the icon to show."] = "You must be using a certain talent tree for the icon to show."
L['CD Fade'] = true
L["Cooldown"] = true
L['On Cooldown'] = true
L['Reminders'] = true
L['Remove Group'] = true
L['Select Group'] = true
L['Role'] = true
L['Caster'] = true
L['Any'] = true
L['Personal Buffs'] = true
L['Only check if the buff is coming from you.'] = true
L['Spells'] = true
L['New ID'] = true
L['Remove ID'] = true

if Locale == "deDE" then
	L = AceLocale:NewLocale("Enhanced_Config", "deDE")
	L["Version"] = "Version"
	L["Coding:"] = "Programmierung:"
	L["Credits"] = "Credits"
elseif Locale == "ptBR" then
	L = AceLocale:NewLocale("Enhanced_Config", "ptBR")
	L["Version"] = "Versão"
	L["Coding:"] = "Codificação:"
	L["Credits"] = "Créditos"
elseif Locale == "esES" then
	L = AceLocale:NewLocale("Enhanced_Config", "esES")
	L["Version"] = "Versión"
	L["Coding:"] = "Codificación:"
	L["Credits"] = "Créditos"
elseif Locale == "esMX" then
	L = AceLocale:NewLocale("Enhanced_Config", "esMX")
	L["Version"] = "Versión"
	L["Coding:"] = "Codificación:"
	L["Credits"] = "Créditos"
elseif Locale == "ruRU" then
	L = AceLocale:NewLocale("Enhanced_Config", "ruRU")
	L["Version"] = "Версия"
	L["Coding:"] = "Написание кода:"
	L["Credits"] = "Благодарности"
elseif Locale == "frFR" then
	L = AceLocale:NewLocale("Enhanced_Config", "frFR")
	L["Version"] = "Version"
	L["Coding:"] = "Codage: "
	L["Credits"] = "Crédits"
elseif Locale == "itIT" then
	L = AceLocale:NewLocale("Enhanced_Config", "itIT")
	L["Version"] = true
	L["Coding:"] = true
	L["Credits"] = true
elseif Locale == "koKR" then
	L = AceLocale:NewLocale("Enhanced_Config", "koKR")
	L["Version"] = "버전"
	L["Coding:"] = "개발:"
	L["Credits"] = "제작"
elseif Locale == "znCN" then
	L = AceLocale:NewLocale("Enhanced_Config", "zhCN")
	L["Version"] = "版本"
	L["Coding:"] = "编码:"
	L["Credits"] = "呜谢"
end
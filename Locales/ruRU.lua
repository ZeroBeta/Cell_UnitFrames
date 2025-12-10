if (GAME_LOCALE or GetLocale()) ~= "ruRU" then return end
---@class CUF
local CUF = select(2, ...)
local L = CUF.L

--[[Translation missing --]]
L["absorbColor"] = "Absorb Color"
--[[Translation missing --]]
L["absorbTexture"] = "Absorb Texture"
--[[Translation missing --]]
L["Additive"] = "Additive"
--[[Translation missing --]]
L["AdditiveImportTooltip"] = "Will add to the current list"
--[[Translation missing --]]
L["AFK"] = "AFK"
--[[Translation missing --]]
L["Alignment"] = "Alignment"
--[[Translation missing --]]
L["altPowerBar"] = "Alt Power Bar"
--[[Translation missing --]]
L["AlwaysUpdate"] = "Always Update"
--[[Translation missing --]]
L["AlwaysUpdateUnitFrameTooltip"] = [=[Forces an update every %ss
Can help with issues where the Unit Frame is not updating correctly]=]
--[[Translation missing --]]
L["AnchorToPowerBar"] = "Anchor to Power Bar"
L["arcaneCharges"] = "Чародейские заряды"
L["background"] = "Фон"
L["Background"] = "Фон"
L["Backup_automatic"] = "Автоматическое резервное копирование"
L["Backup_manual"] = "Резервное копирование вручную"
L["BackupInfo"] = "%s создан: %s Макеты: %s"
L["BackupOverwrite"] = "Это действие перезапишет предыдущую резервную копию: %s"
L["Backups"] = "Резервные копии"
L["blacklist"] = "Черный список"
L["bloodRune"] = "Руна крови"
L["Boss"] = "Босс"
--[[Translation missing --]]
L["boss"] = "Boss"
L["BossTooltip"] = "Отображает ауры боссов"
--[[Translation missing --]]
L["bottom"] = "Bottom"
--[[Translation missing --]]
L["buffFrame"] = "Buff Frame"
L["buffs"] = "Баффы"
L["castBar"] = "Полоса применений"
L["CastByNPC"] = "Ауры NPC"
L["CastByNPCTooltip"] = "Отображает ауры NPC"
L["CastByPlayers"] = "Ауры игроков"
L["CastByPlayersTooltip"] = "Отображает ауры игроков"
--[[Translation missing --]]
L["CellEditMode"] = "Cell Frames"
--[[Translation missing --]]
L["CellEditModeTip"] = "(Previews won't dynamically update)"
--[[Translation missing --]]
L["CellRaidDebuffsTooltip"] = "Show Raid Debuffs enabled in Cell"
--[[Translation missing --]]
L["charged"] = "Charged"
L["chi"] = "Ци"
L["classBar"] = "Полоса класса"
L["classResources"] = "Ресурсы класса"
L["color"] = "Цвет"
L["colorTab"] = "Цвета"
--[[Translation missing --]]
L["ColorTypeTooltip"] = [=[|cFFFFD700Cell|r - Uses the appearance settings from |cFFFFD700Cell|r.
Custom Unit Frame colors can be changed in the |cFFFFD700Colors|r tab.]=]
--[[Translation missing --]]
L["Combat"] = "Combat"
L["combatIcon"] = "Иконка боя"
L["comboPoints"] = "Cерия приемов"
L["CopyFromPopUp"] = "Скопировать настройки из %s в %s?"
L["CopyFromTooltip"] = "|cFFFF0000Это действие перезапишет все настройки текущего макета!|r Скопировать настройки из другого макета"
L["CopyLayoutFrom"] = "Скопировать макет из"
L["CopyWidgetsFrom"] = "Скопировать из"
L["CopyWidgetsFromTooltip"] = "Скопировать настройки виджета другого юнита"
L["CreateBackup"] = "Создать копию"
L["CreateBackupPopup"] = "Создать резервную копию для этих макетов? %s"
L["CreateBackupTooltip"] = "Создать резервную копию настроек Cell UnitFrame для этих макетов? %s"
L["CreatedAutomaticBackup"] = "Обнаружена новая версия. Созданы резервные копии для: "
L["CreatedManualBackup"] = "Созданы вручную резервные копии для:"
--[[Translation missing --]]
L["CUFFrameName"] = "CUF Frame Name"
L["CUFLayoutMasterNone"] = "|cffffb5c5Нет|r"
L["customText"] = "Пользовательский текст"
--[[Translation missing --]]
L["deathColor"] = "Death Color"
--[[Translation missing --]]
L["debuffFrame"] = "Debuff Frame"
L["debuffs"] = "Дебаффы"
--[[Translation missing --]]
L["DetachedAnchorEditMode"] = "Detached positioning changed in Edit Mode"
--[[Translation missing --]]
L["Dispellable"] = "Dispellable"
--[[Translation missing --]]
L["DispellableTooltip"] = "Show auras dispellable by you"
--[[Translation missing --]]
L["Downwards"] = "Downwards"
--[[Translation missing --]]
L["DummyAnchorName"] = "Dummy Anchor Name"
--[[Translation missing --]]
L["DummyAnchors"] = "Dummy Anchors"
--[[Translation missing --]]
L["DummyAnchorsTooltip"] = [=[Create custom-named anchors to match other addons.
Useful for integrating with existing UI elements like WeakAuras.]=]
L["duration"] = "Длительность"
--[[Translation missing --]]
L["duration-and-max"] = "Duration & Max"
--[[Translation missing --]]
L["EditingLayout"] = "Editing Layout"
L["EditMode"] = "Режим редактирования"
L["EditModeButtonTooltip"] = "Режим редактирования позволяет управлять расположением рамок. Кликните на рамку, чтобы показать дополнительные настройки. Команда \"/cuf edit\" также включает/выключает этот режим."
--[[Translation missing --]]
L["elite"] = "Elite"
L["Empower"] = "Усиленные"
--[[Translation missing --]]
L["Enrage"] = "Enrage"
L["essence"] = "Сущность"
--[[Translation missing --]]
L["FadeDuration"] = "Fade Duration"
--[[Translation missing --]]
L["FadeInTimer"] = "Fade In Timer"
--[[Translation missing --]]
L["FadeOutTimer"] = "Fade Out Timer"
--[[Translation missing --]]
L["Fader"] = "Fader"
--[[Translation missing --]]
L["firstInitialLastName"] = "First Initial Last Name"
L["firstInitialLastName_Example"] = "Т. рейдера"
--[[Translation missing --]]
L["firstName"] = "First Name"
L["firstName_Example"] = "Тренировочный"
--[[Translation missing --]]
L["firstNameLastInitial"] = "First Name Last Initial"
L["firstNameLastInitial_Example"] = "Тренировочный р."
L["focus"] = "Фокус"
--[[Translation missing --]]
L["Frame"] = "Frame"
L["friendly"] = "Дружелюбный"
L["frostRune"] = "Руна льда"
--[[Translation missing --]]
L["fullColor"] = "Full Color"
L["fullName"] = "Имя целиком"
L["fullName_Example"] = "Тренировочный манекен рейдера"
L["fullyCharged"] = "Полностью заряжено"
L["FullyCharged"] = "Полностью заряжено"
L["generalTab"] = "Основные"
--[[Translation missing --]]
L["GrowthDirection"] = "Growth Direction"
--[[Translation missing --]]
L["healAbsorb"] = "Heal Absorb"
--[[Translation missing --]]
L["healthBar"] = "Health Bar"
--[[Translation missing --]]
L["healthBarTexture"] = "Health Bar Texture"
--[[Translation missing --]]
L["healthLossTexture"] = "Health Loss Texture"
L["healthText"] = "Здоровье"
--[[Translation missing --]]
L["HelpTip_BlizzardFramesToggle"] = "Click here to toggle Blizzard Frames"
--[[Translation missing --]]
L["HelpTip_BossFramePreview"] = "When editing %s frames, they will display the %s."
--[[Translation missing --]]
L["HelpTip_EditModeOverlay"] = [=[Drag to reposition the Unit Frame.

Click for more options.]=]
--[[Translation missing --]]
L["HelpTip_EditModeToggle"] = "Click here to position Unit Frames"
--[[Translation missing --]]
L["HelpTip_TagHintButton"] = "Click here to see available tags"
--[[Translation missing --]]
L["hidden"] = "Hidden"
--[[Translation missing --]]
L["HideAtMaxLevel"] = "Hide at Max Level"
L["HideDefaultCastBar"] = "Скрыть стандартную полосу применений"
L["HideDefaultCastBarTooltip"] = "Скрывает стандартную полосу применений. Требуется перезагрузка пользовательского интерфейса, чтобы снова отображать после отключения этого параметра. "
--[[Translation missing --]]
L["HideIfEmpty"] = "Hide if Empty"
--[[Translation missing --]]
L["HideIfFull"] = "Hide if Full"
--[[Translation missing --]]
L["HideInCombatTooltip"] = "Hide tooltips in combat"
L["HideNoDuration"] = "Скрывать без длительности"
L["HideNoDurationTooltip"] = "Не отображать ауры с неограниченным временем действия"
--[[Translation missing --]]
L["HideOutOfCombat"] = "Hide Out of Combat"
--[[Translation missing --]]
L["highlight"] = "Highlight"
L["holyPower"] = "Энергия Света"
L["hostile"] = "Враждебный"
--[[Translation missing --]]
L["hostileUnits"] = "Hostile Units"
--[[Translation missing --]]
L["Hover"] = "Hover"
L["ImportExportColors"] = "Импорт/Экспорт настроек цвета"
--[[Translation missing --]]
L["Info"] = "Info"
--[[Translation missing --]]
L["InterruptedLabelTooltip"] = [=[%s - Type (%s or %s)
%s - Spell Name]=]
L["interruptible"] = "Прерываемое"
L["Interruptible"] = "Прерываемое"
--[[Translation missing --]]
L["Label"] = "Label"
--[[Translation missing --]]
L["lastName"] = "Last Name"
L["lastName_Example"] = "рейдера"
L["leaderIcon"] = "Иконка лидера"
--[[Translation missing --]]
L["left"] = "Left"
L["levelText"] = "Уровень"
L["MasterLayout"] = "Основной макет"
L["MasterLayoutTooltip"] = "Макет, используемый |cFFFFD700Cell UnitFrames|r. Выбор конкретного макета будет всегда использовать его независимо от настроек автоматического переключения |cFFFFD700Cell|r. При выборе |cffffb5c5Нет|r будет автоматически переключаться на текущий активный макет в |cFFFFD700Cell|r."
--[[Translation missing --]]
L["MaxAlpha"] = "Max Alpha"
L["MaxDuration"] = "Максимальная длительность"
--[[Translation missing --]]
L["MinAlpha"] = "Min Alpha"
L["MinDuration"] = "Минимальная длительность"
L["MirrorPlayer"] = "Отразить игрока"
L["NameFormats"] = "Форматы имени"
L["nameText"] = "Имя"
L["neutral"] = "Нейтральный"
--[[Translation missing --]]
L["NewVersion"] = "New Version"
L["nonInterruptible"] = "Непрерываемое"
L["NonInterruptible"] = "Непрерываемое"
--[[Translation missing --]]
L["NonPersonal"] = "Non Personal"
L["NonPersonalTooltip"] = "Отображает не ваши ауры"
--[[Translation missing --]]
L["normal"] = "Normal"
--[[Translation missing --]]
L["OnlyShowInterruptableCast"] = "Only show interruptable casts"
--[[Translation missing --]]
L["overAbsorb"] = "Overabsorb"
--[[Translation missing --]]
L["overabsorbColor"] = "Overabsorb Color"
--[[Translation missing --]]
L["overabsorbTexture"] = "Overabsorb Texture"
--[[Translation missing --]]
L["overHeal"] = "Over Heal"
--[[Translation missing --]]
L["overlayColor"] = "Overlay Color"
--[[Translation missing --]]
L["overlayTexture"] = "Overlay Texture"
--[[Translation missing --]]
L["Override"] = "Override"
--[[Translation missing --]]
L["OverrideImportTooltip"] = "Will override the current list"
--[[Translation missing --]]
L["overShield"] = "Overshield"
--[[Translation missing --]]
L["overshieldColor"] = "Overshield Color"
--[[Translation missing --]]
L["overshieldOffset"] = "Overshield Offset"
--[[Translation missing --]]
L["overshieldReverseOffset"] = "Overshield Reverse Offset"
--[[Translation missing --]]
L["overshieldSize"] = "Overshield Size"
L["Personal"] = "Личные"
L["PersonalTooltip"] = "Отображает ваши ауры"
L["pet"] = "Питомец"
L["player"] = "Игрок"
--[[Translation missing --]]
L["playerCastBar"] = "Player Cast Bar"
--[[Translation missing --]]
L["PlayerTarget"] = "Player Target"
L["Positioning"] = "Позиционирование"
--[[Translation missing --]]
L["powerBar"] = "Power Bar"
--[[Translation missing --]]
L["powerBarAlpha"] = "Power Bar Alpha"
--[[Translation missing --]]
L["powerBarTexture"] = "Power Bar Texture"
--[[Translation missing --]]
L["PowerFilter"] = "Power Filter"
--[[Translation missing --]]
L["PowerFilterTooltip"] = "Enable to use 'Power Bar Filters' from Cell"
--[[Translation missing --]]
L["powerLossAlpha"] = "Power Loss Alpha"
--[[Translation missing --]]
L["powerLossTexture"] = "Power Loss Texture"
L["powerText"] = "Ресурсы"
--[[Translation missing --]]
L["Raid"] = "Raid"
L["raidIcon"] = "Метка"
--[[Translation missing --]]
L["RaidTooltip"] = "Show raid auras"
--[[Translation missing --]]
L["Range"] = "Range"
--[[Translation missing --]]
L["rare"] = "Rare"
--[[Translation missing --]]
L["rareelite"] = "Rare Elite"
L["reaction"] = "Враждебность"
L["readyCheckIcon"] = "Проверка готовности"
--[[Translation missing --]]
L["RelativeTo"] = "Relative To"
--[[Translation missing --]]
L["remaining"] = "Remaining"
--[[Translation missing --]]
L["remaining-and-max"] = "Remaining & Max"
L["restingIcon"] = "Иконка отдыха"
L["RestoreBackup"] = "Восстановить из копии"
L["RestoreBackupPopup"] = "Восстановить из этой резервной копии? %s"
--[[Translation missing --]]
L["RestoreBackupTooltip"] = [=[Restores a backup of Cell UnitFrame settings

%s

%s]=]
L["Reverse"] = "Инвертировать"
--[[Translation missing --]]
L["reverseHealthFill"] = "Reverse Health Fill"
--[[Translation missing --]]
L["right"] = "Right"
L["roleIcon"] = "Иконка роли"
L["runes"] = "Руны"
--[[Translation missing --]]
L["SameHeightAsHealthBar"] = "Same Height As Health Bar"
--[[Translation missing --]]
L["SameSizeAsHealthBar"] = "Same Size As Health Bar"
--[[Translation missing --]]
L["SameWidthAsHealthBar"] = "Same Width As Health Bar"
--[[Translation missing --]]
L["Separator"] = "Separator"
L["shieldBar"] = "Полоса щитов"
--[[Translation missing --]]
L["shieldColor"] = "Shield Color"
L["ShowBorder"] = "Отображать рамку"
--[[Translation missing --]]
L["ShowDeadStatus"] = "Show Dead Status"
--[[Translation missing --]]
L["ShowDeadStatusTooltip"] = "Show \"Dead\" instead of 0."
L["ShowEmpowerName"] = "Отображать название усиленных"
L["ShowEmpowerNameTooltip"] = "Показывать название для усиленных заклинаний"
L["ShowIcon"] = "Отображать иконку"
L["ShowSpell"] = "Отображать название"
--[[Translation missing --]]
L["ShowTarget"] = "Show Target"
L["soulShards"] = "Осколки души"
L["Spark"] = "Искра"
L["stageFour"] = "Стадия 4"
L["stageOne"] = "Стадия 1"
L["stageThree"] = "Стадия 3"
L["stageTwo"] = "Стадия 2"
L["stageZero"] = "Стадия 0"
--[[Translation missing --]]
L["swapHostileHealthAndLossColors"] = "Swap Health and Health Loss Colors"
--[[Translation missing --]]
L["tag_abs"] = "Displays the current amount of absorbs."
--[[Translation missing --]]
L["tag_abs:healabs:merge"] = "Displays the current amount of absorbs minus heal absorbs."
--[[Translation missing --]]
L["tag_abs:healabs:merge:short"] = "Displays the current amount of absorbs minus heal absorbs as a shortvalue."
--[[Translation missing --]]
L["tag_abs:short"] = "Displays absorbs as a shortvalue."
--[[Translation missing --]]
L["tag_afk"] = "Displays 'AFK' if the unit is AFK."
--[[Translation missing --]]
L["tag_classcolor"] = "Set the text color to the class color of the unit."
--[[Translation missing --]]
L["tag_classcolor:target"] = "Set the text color to the class color of the unit's target."
--[[Translation missing --]]
L["tag_classification"] = "Displays the classification of the unit."
--[[Translation missing --]]
L["tag_classification:icon"] = "Displays the classification of the unit as an icon."
--[[Translation missing --]]
L["tag_curaltmana"] = "Displays the current alt mana."
--[[Translation missing --]]
L["tag_curaltmana:short"] = "Displays the current alt mana as a shortvalue."
--[[Translation missing --]]
L["tag_curhp"] = "Displays the current HP."
--[[Translation missing --]]
L["tag_curhp:abs"] = "Displays current HP and absorbs."
--[[Translation missing --]]
L["tag_curhp:abs:merge"] = "Displays the sum of current HP and absorbs."
--[[Translation missing --]]
L["tag_curhp:abs:merge:short"] = "Displays summed HP and absorbs as a shortvalue."
--[[Translation missing --]]
L["tag_curhp:abs:short"] = "Displays current HP and absorbs as shortvalue."
--[[Translation missing --]]
L["tag_curhp:short"] = "Displays the current HP as a shortvalue."
--[[Translation missing --]]
L["tag_curmana"] = "Displays the current mana."
--[[Translation missing --]]
L["tag_curmana:short"] = "Displays the current mana as a shortvalue."
--[[Translation missing --]]
L["tag_curpp"] = "Displays the current power."
--[[Translation missing --]]
L["tag_curpp:short"] = "Displays the current power as a shortvalue."
--[[Translation missing --]]
L["tag_dead"] = "Displays 'Dead' if the unit is dead."
--[[Translation missing --]]
L["tag_defaltmana"] = "Displays the alt mana deficit."
--[[Translation missing --]]
L["tag_defaltmana:short"] = "Displays alt mana deficit as a shortvalue."
--[[Translation missing --]]
L["tag_defhp"] = "Displays the current HP deficit."
--[[Translation missing --]]
L["tag_defhp:short"] = "Displays HP deficit as a shortvalue."
--[[Translation missing --]]
L["tag_defmana"] = "Displays the mana deficit."
--[[Translation missing --]]
L["tag_defmana:short"] = "Displays mana deficit as a shortvalue."
--[[Translation missing --]]
L["tag_defpp"] = "Displays the power deficit."
--[[Translation missing --]]
L["tag_defpp:short"] = "Displays power deficit as a shortvalue."
--[[Translation missing --]]
L["tag_group"] = "Displays the subgroup of the unit."
--[[Translation missing --]]
L["tag_group:raid"] = "Displays the subgroup of the unit. Only shows in raid."
--[[Translation missing --]]
L["tag_healabs"] = "Displays the amount of heal absorbs."
--[[Translation missing --]]
L["tag_healabs:short"] = "Displays heal absorbs as a shortvalue."
--[[Translation missing --]]
L["tag_maxaltmana"] = "Displays the maximum alt mana."
--[[Translation missing --]]
L["tag_maxaltmana:short"] = "Displays the maximum alt mana as a shortvalue."
--[[Translation missing --]]
L["tag_maxhp"] = "Displays the maximum HP."
--[[Translation missing --]]
L["tag_maxhp:short"] = "Displays the maximum HP as a shortvalue."
--[[Translation missing --]]
L["tag_maxmana"] = "Displays the maximum mana."
--[[Translation missing --]]
L["tag_maxmana:short"] = "Displays the maximum mana as a shortvalue."
--[[Translation missing --]]
L["tag_maxpp"] = "Displays the maximum power."
--[[Translation missing --]]
L["tag_maxpp:short"] = "Displays the maximum power as a shortvalue."
--[[Translation missing --]]
L["tag_name"] = "Displays the name of the unit."
--[[Translation missing --]]
L["tag_name:abbrev"] = "Displays the name of the unit with abbreviations."
--[[Translation missing --]]
L["tag_name:abbrev:long"] = "Displays the name of the unit with abbreviations (max 20 characters)"
--[[Translation missing --]]
L["tag_name:abbrev:medium"] = "Displays the name of the unit with abbreviations (max 15 characters)"
--[[Translation missing --]]
L["tag_name:abbrev:short"] = "Displays the name of the unit with abbreviations (max 10 characters)"
--[[Translation missing --]]
L["tag_name:abbrev:veryshort"] = "Displays the name of the unit with abbreviations (max 5 characters)"
--[[Translation missing --]]
L["tag_name:long"] = "Displays the name of the unit (max 20 characters)"
--[[Translation missing --]]
L["tag_name:medium"] = "Displays the name of the unit (max 15 characters)"
--[[Translation missing --]]
L["tag_name:short"] = "Displays the name of the unit (max 10 characters)"
--[[Translation missing --]]
L["tag_name:veryshort"] = "Displays the name of the unit (max 5 characters)"
--[[Translation missing --]]
L["tag_perabs"] = "Displays absorbs as a percentage."
--[[Translation missing --]]
L["tag_perabs:short"] = "Displays absorb percentage without decimals."
--[[Translation missing --]]
L["tag_peraltmana"] = "Displays the current alt mana as a percentage."
--[[Translation missing --]]
L["tag_peraltmana:short"] = "Displays alt mana percentage without decimals."
--[[Translation missing --]]
L["tag_perdefaltmana"] = "Displays the alt mana deficit as a percentage."
--[[Translation missing --]]
L["tag_perdefaltmana:short"] = "Displays alt mana deficit percentage without decimals."
--[[Translation missing --]]
L["tag_perdefhp"] = "Displays the HP deficit as a percentage."
--[[Translation missing --]]
L["tag_perdefhp:short"] = "Displays HP deficit percentage without decimals."
--[[Translation missing --]]
L["tag_perdefmana"] = "Displays the mana deficit as a percentage."
--[[Translation missing --]]
L["tag_perdefmana:short"] = "Displays mana deficit percentage without decimals."
--[[Translation missing --]]
L["tag_perdefpp"] = "Displays the power deficit as a percentage."
--[[Translation missing --]]
L["tag_perdefpp:short"] = "Displays power deficit percentage without decimals."
--[[Translation missing --]]
L["tag_perhealabs"] = "Displays heal absorbs as a percentage."
--[[Translation missing --]]
L["tag_perhealabs:short"] = "Displays heal absorb percentage without decimals."
--[[Translation missing --]]
L["tag_perhp"] = "Displays the current HP as a percentage."
--[[Translation missing --]]
L["tag_perhp:perabs"] = "Displays current HP and absorbs as percentages."
--[[Translation missing --]]
L["tag_perhp:perabs:merge"] = "Displays the total HP and absorbs as a percentage."
--[[Translation missing --]]
L["tag_perhp:perabs:merge:short"] = "Displays total HP and absorbs as a percentage without decimals."
--[[Translation missing --]]
L["tag_perhp:perabs:short"] = "Displays HP and absorbs as percentages without decimals."
--[[Translation missing --]]
L["tag_perhp:short"] = "Displays the current HP percentage without decimals."
--[[Translation missing --]]
L["tag_permana"] = "Displays the current mana as a percentage."
--[[Translation missing --]]
L["tag_permana:short"] = "Displays mana percentage without decimals."
--[[Translation missing --]]
L["tag_perpp"] = "Displays the current power as a percentage."
--[[Translation missing --]]
L["tag_perpp:short"] = "Displays power percentage without decimals."
--[[Translation missing --]]
L["tag_target"] = "Displays the name of the unit's target."
--[[Translation missing --]]
L["tag_target:abbrev"] = "Displays the name of the unit's target with abbreviations."
--[[Translation missing --]]
L["tag_target:abbrev:long"] = "Displays the name of the unit's target with abbreviations (max 20 characters)"
--[[Translation missing --]]
L["tag_target:abbrev:medium"] = "Displays the name of the unit's target with abbreviations (max 15 characters)"
--[[Translation missing --]]
L["tag_target:abbrev:short"] = "Displays the name of the unit's target with abbreviations (max 10 characters)"
--[[Translation missing --]]
L["tag_target:abbrev:veryshort"] = "Displays the name of the unit's target with abbreviations (max 5 characters)"
--[[Translation missing --]]
L["tag_target:long"] = "Displays the name of the unit's target (max 20 characters)"
--[[Translation missing --]]
L["tag_target:medium"] = "Displays the name of the unit's target (max 15 characters)"
--[[Translation missing --]]
L["tag_target:short"] = "Displays the name of the unit's target (max 10 characters)"
--[[Translation missing --]]
L["tag_target:veryshort"] = "Displays the name of the unit's target (max 5 characters)"
--[[Translation missing --]]
L["TagHintButtonTooltip"] = "Click to see available tags"
--[[Translation missing --]]
L["TagTooltipsTitle"] = "Available Tags"
L["target"] = "Цель"
L["targettarget"] = "Цель цели"
--[[Translation missing --]]
L["tempEnchant"] = "Temporary Enchants"
--[[Translation missing --]]
L["tempEnchantTooltip"] = "Show temporary enchants"
L["Texture"] = "Текстура"
L["texture"] = "Текстура"
--[[Translation missing --]]
L["TextureOverwriteTooltip"] = "Enable to overwrite texture set in Cell"
--[[Translation missing --]]
L["TimerFormat"] = "Timer Format"
--[[Translation missing --]]
L["TimeToHold"] = "Time to Hold"
--[[Translation missing --]]
L["TimeToHoldTooltip"] = "Time in seconds to hold the Cast Bar after the spell has failed or been interrupted"
L["ToggleEditMode"] = "Вкл/выкл режим редактирования"
--[[Translation missing --]]
L["top"] = "Top"
--[[Translation missing --]]
L["totems"] = "Totems"
L["unholyRune"] = "Руна нечестивости"
L["UnitFrames"] = "Рамки юнитов"
L["unitFramesTab"] = "Рамки юнитов"
--[[Translation missing --]]
L["UnitTarget"] = "Unit Target"
--[[Translation missing --]]
L["Upwards"] = "Upwards"
L["UseBlacklist"] = "Черный список"
L["UseClassColor"] = "Использовать цвет класса"
--[[Translation missing --]]
L["useClassColorForPet"] = "Use Class Color for Pet"
L["UseFullyCharged"] = "Цвет полностью заряженного"
L["UseFullyChargedTooltip"] = "Использовать цвет полностью заряженного для последней стадии"
--[[Translation missing --]]
L["useOverlay"] = "Use Overlay"
--[[Translation missing --]]
L["UseScaling"] = "Use Scaling"
--[[Translation missing --]]
L["UseScalingTooltip"] = [=[Enable to apply the Scale set in |cFFFFD700Cell|r
Reload after toggling to fully update all frames]=]
L["UseWhitelist"] = "Белый список"
L["ValidTags"] = "Допустимые теги"
--[[Translation missing --]]
L["VerticalFill"] = "Vertical Fill"
L["whitelist"] = "Белый список"
--[[Translation missing --]]
L["WhiteListPriority"] = "Sort by Priority"
--[[Translation missing --]]
L["WhiteListPriorityTooltip"] = [=[Use priority sorting for Whitelist

The priority goes from top of the list to the bottom]=]
L["Widgets"] = "Виджеты"
--[[Translation missing --]]
L["worldboss"] = "Boss"
--[[Translation missing --]]
L["Zoom"] = "Zoom"


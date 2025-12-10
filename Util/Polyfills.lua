---@class CUF
local CUF = select(2, ...)

-------------------------------------------------
-- Cell_UnitFrames Polyfills for WotLK 3.3.5a
-- These supplement the polyfills in Cell_Wrath
-------------------------------------------------

-- Ensure WOW_PROJECT_BURNING_CRUSADE_CLASSIC exists (used by LibDispel)
if not WOW_PROJECT_BURNING_CRUSADE_CLASSIC then
    WOW_PROJECT_BURNING_CRUSADE_CLASSIC = 5
end

-------------------------------------------------
-- UnitInPartyIsAI polyfill (Retail-only API)
-- AI companions don't exist in WotLK
-------------------------------------------------
if not UnitInPartyIsAI then
    function UnitInPartyIsAI(unit)
        return false
    end
end

-------------------------------------------------
-- UnitSelectionType polyfill (Retail-only API)
-- Returns: 0=hostile, 3=friendly, 4=pet/controlled
-------------------------------------------------
if not UnitSelectionType then
    function UnitSelectionType(unit)
        if not unit or not UnitExists(unit) then return 3 end
        
        -- Check if it's a pet
        if UnitIsUnit(unit, "pet") or 
           UnitIsUnit(unit, "partypet1") or UnitIsUnit(unit, "partypet2") or
           UnitIsUnit(unit, "partypet3") or UnitIsUnit(unit, "partypet4") then
            return 4 -- Pet
        end
        
        -- Check reaction
        local reaction = UnitReaction("player", unit)
        if reaction then
            if reaction >= 5 then
                return 3 -- Friendly
            elseif reaction <= 2 then
                return 0 -- Hostile
            else
                return 2 -- Neutral
            end
        end
        
        -- Fallback based on friend/enemy
        if UnitIsFriend("player", unit) then
            return 3 -- Friendly
        elseif UnitIsEnemy("player", unit) then
            return 0 -- Hostile
        end
        
        return 3 -- Default friendly
    end
end

-------------------------------------------------
-- Enum.PowerType polyfill
-- WotLK power types are numeric constants
-------------------------------------------------
if not Enum then
    Enum = {}
end

-- Always ensure PowerType exists and has all values
Enum.PowerType = Enum.PowerType or {}
-- Force set values - WotLK power types
Enum.PowerType.Mana = Enum.PowerType.Mana or 0
Enum.PowerType.Rage = Enum.PowerType.Rage or 1
Enum.PowerType.Focus = Enum.PowerType.Focus or 2
Enum.PowerType.Energy = Enum.PowerType.Energy or 3
Enum.PowerType.ComboPoints = Enum.PowerType.ComboPoints or 4
Enum.PowerType.Runes = Enum.PowerType.Runes or 5
Enum.PowerType.RunicPower = Enum.PowerType.RunicPower or 6
-- Retail-only power types (stub with -1)
Enum.PowerType.Chi = Enum.PowerType.Chi or -1
Enum.PowerType.HolyPower = Enum.PowerType.HolyPower or -1
Enum.PowerType.SoulShards = Enum.PowerType.SoulShards or -1
Enum.PowerType.ArcaneCharges = Enum.PowerType.ArcaneCharges or -1
Enum.PowerType.Essence = Enum.PowerType.Essence or -1
Enum.PowerType.Maelstrom = Enum.PowerType.Maelstrom or -1
Enum.PowerType.Insanity = Enum.PowerType.Insanity or -1
Enum.PowerType.LunarPower = Enum.PowerType.LunarPower or -1
Enum.PowerType.Fury = Enum.PowerType.Fury or -1
Enum.PowerType.Pain = Enum.PowerType.Pain or -1

-------------------------------------------------
-- C_DateAndTime polyfill (Retail-only API)
-------------------------------------------------
if not C_DateAndTime then
    C_DateAndTime = {}
end

if not C_DateAndTime.GetCurrentCalendarTime then
    function C_DateAndTime.GetCurrentCalendarTime()
        local d = date("*t")
        return {
            year = d.year,
            month = d.month,
            monthDay = d.day,
            weekday = d.wday,
            hour = d.hour,
            minute = d.min,
        }
    end
end

-------------------------------------------------
-- CALENDAR_FULLDATE_MONTH_NAMES polyfill
-- Retail global for calendar month names
-------------------------------------------------
if not CALENDAR_FULLDATE_MONTH_NAMES then
    CALENDAR_FULLDATE_MONTH_NAMES = {
        "January", "February", "March", "April",
        "May", "June", "July", "August",
        "September", "October", "November", "December"
    }
end

-------------------------------------------------
-- C_UnitAuras polyfill
-- Retail uses a completely different aura API
-------------------------------------------------
if not C_UnitAuras then
    C_UnitAuras = {}
end

if not C_UnitAuras.GetAuraDataByAuraInstanceID then
    function C_UnitAuras.GetAuraDataByAuraInstanceID(unit, auraInstanceID)
        -- WotLK doesn't have aura instance IDs
        -- Return nil, callers should handle this
        return nil
    end
end

if not C_UnitAuras.GetAuraDataBySlot then
    function C_UnitAuras.GetAuraDataBySlot(unit, slot)
        return nil
    end
end

if not C_UnitAuras.GetAuraSlots then
    function C_UnitAuras.GetAuraSlots(unit, filter)
        return nil
    end
end

-------------------------------------------------
-- AuraUtil polyfill
-- Provides retail-compatible aura iteration
-------------------------------------------------
if not AuraUtil then
    AuraUtil = {}
end

if not AuraUtil.AuraFilters then
    AuraUtil.AuraFilters = {
        Helpful = "HELPFUL",
        Harmful = "HARMFUL",
        Raid = "RAID",
        IncludeNameplateOnly = "INCLUDE_NAME_PLATE_ONLY",
        Player = "PLAYER",
        Cancelable = "CANCELABLE",
        NotCancelable = "NOT_CANCELABLE",
    }
end

if not AuraUtil.AuraUpdateChangedType then
    AuraUtil.AuraUpdateChangedType = {
        None = 0,
        Buff = 1,
        Debuff = 2,
        Dispel = 3,
    }
end

if not AuraUtil.ForEachAura then
    ---@param unit string
    ---@param filter string "HELPFUL" or "HARMFUL"
    ---@param batchCount number? (ignored in WotLK)
    ---@param callback function
    ---@param usePackedAura boolean? (ignored in WotLK)
    function AuraUtil.ForEachAura(unit, filter, batchCount, callback, usePackedAura)
        if not unit or not callback then return end

        local i = 1
        while true do
            local name, icon, count, debuffType, duration, expirationTime,
                  source, isStealable, nameplateShowPersonal, spellId,
                  canApplyAura, isBossDebuff = UnitAura(unit, i, filter)

            if not name then break end

            -- Create AuraData-like table matching Retail structure
            local auraData = {
                name = name,
                icon = icon,
                applications = count or 0,
                dispelName = debuffType or "",
                duration = duration or 0,
                expirationTime = expirationTime or 0,
                sourceUnit = source,
                isStealable = isStealable or false,
                spellId = spellId or 0,
                auraInstanceID = i, -- Use index as instance ID
                isHarmful = (filter == "HARMFUL"),
                isHelpful = (filter == "HELPFUL"),
                isNameplateOnly = false,
                isBossAura = isBossDebuff or false,
                canApplyAura = canApplyAura or false,
            }

            callback(auraData)
            i = i + 1
        end
    end
end

-------------------------------------------------
-- Frame:SetIgnoreParentAlpha polyfill
-- Doesn't exist in WotLK
-------------------------------------------------
do
    local frame = CreateFrame("Frame")
    local mt = getmetatable(frame)

    if mt and mt.__index and not mt.__index.SetIgnoreParentAlpha then
        function mt.__index:SetIgnoreParentAlpha(ignore)
            -- Not supported in WotLK, no-op
        end
    end
end

-------------------------------------------------
-- StatusBar:SetFillStyle polyfill
-- Doesn't exist in WotLK
-------------------------------------------------
do
    local statusBar = CreateFrame("StatusBar")
    local mt = getmetatable(statusBar)

    if mt and mt.__index and not mt.__index.SetFillStyle then
        function mt.__index:SetFillStyle(fillStyle)
            -- Not supported in WotLK, no-op
            -- fillStyle would be "STANDARD", "REVERSE", "CENTER"
        end
    end
end

-------------------------------------------------
-- FontString:SetTextScale polyfill
-- Doesn't exist in WotLK
-------------------------------------------------
do
    local frame = CreateFrame("Frame")
    local fontString = frame:CreateFontString()
    local mt = getmetatable(fontString)

    if mt and mt.__index then
        -- SetTextScale polyfill (Retail-only)
        if not mt.__index.SetTextScale then
            function mt.__index:SetTextScale(scale)
                -- WotLK doesn't have SetTextScale, no-op
            end
        end
        
        -- SetScale polyfill for FontStrings (may not exist in WotLK)
        if not mt.__index.SetScale then
            function mt.__index:SetScale(scale)
                -- WotLK FontStrings don't support SetScale, no-op
            end
        end
    end
end

-------------------------------------------------
-- GetSpecialization polyfills
-- WotLK doesn't have the spec system
-------------------------------------------------
if not GetSpecialization then
    function GetSpecialization()
        -- WotLK doesn't have spec system, return nil
        return nil
    end
end

if not GetSpecializationInfoForClassID then
    function GetSpecializationInfoForClassID(classID, specIndex)
        -- Return empty values
        return nil, nil, nil, nil, nil
    end
end

-------------------------------------------------
-- PingableType_UnitFrameMixin polyfill
-- Ping system doesn't exist in WotLK
-------------------------------------------------
if not PingableType_UnitFrameMixin then
    PingableType_UnitFrameMixin = {}
end

-------------------------------------------------
-- UnitGetTotalAbsorbs polyfill
-- WotLK doesn't have absorb tracking API
-- Cell_Wrath may provide this via LibHealComm
-------------------------------------------------
if not UnitGetTotalAbsorbs then
    function UnitGetTotalAbsorbs(unit)
        -- Check if Cell_Wrath provides a custom implementation
        if Cell and Cell.funcs and Cell.funcs.GetUnitAbsorbs then
            return Cell.funcs.GetUnitAbsorbs(unit) or 0
        end
        return 0
    end
end

-------------------------------------------------
-- Power-related Retail APIs (stubs)
-------------------------------------------------
if not UnitPartialPower then
    function UnitPartialPower(unit, powerType)
        return 0
    end
end

if not GetPowerRegenForPowerType then
    function GetPowerRegenForPowerType(powerType)
        return nil
    end
end

if not GetUnitChargedPowerPoints then
    function GetUnitChargedPowerPoints(unit)
        return nil
    end
end

if not PlayerVehicleHasComboPoints then
    function PlayerVehicleHasComboPoints()
        return false
    end
end

if not UnitPowerDisplayMod then
    function UnitPowerDisplayMod(powerType)
        return 1
    end
end

-------------------------------------------------
-- Empower spell APIs (Evoker - doesn't exist)
-------------------------------------------------
if not GetUnitEmpowerHoldAtMaxTime then
    function GetUnitEmpowerHoldAtMaxTime(unit)
        return 0
    end
end

if not GetUnitEmpowerStageDuration then
    function GetUnitEmpowerStageDuration(unit, stage)
        return 0
    end
end

-------------------------------------------------
-- StatusBar:GetReverseFill polyfill
-------------------------------------------------
do
    local sb = CreateFrame("StatusBar")
    local mt = getmetatable(sb)

    if mt and mt.__index and not mt.__index.GetReverseFill then
        -- Track reverse fill state
        local reverseFillState = setmetatable({}, { __mode = "k" })

        local origSetReverseFill = mt.__index.SetReverseFill
        if origSetReverseFill then
            function mt.__index:SetReverseFill(reverse)
                reverseFillState[self] = reverse
                return origSetReverseFill(self, reverse)
            end
        else
            function mt.__index:SetReverseFill(reverse)
                reverseFillState[self] = reverse
            end
        end

        function mt.__index:GetReverseFill()
            return reverseFillState[self] or false
        end
    end
end

-------------------------------------------------
-- SPEC constants polyfill
-- WotLK doesn't have these constants
-------------------------------------------------
if not SPEC_MONK_WINDWALKER then SPEC_MONK_WINDWALKER = -1 end
if not SPEC_MAGE_ARCANE then SPEC_MAGE_ARCANE = -1 end
if not SPEC_WARLOCK_DESTRUCTION then SPEC_WARLOCK_DESTRUCTION = -1 end

-------------------------------------------------
-- CastingBarFrameStagePipTemplate polyfill
-- Empower pips don't exist in WotLK
-------------------------------------------------
-- This is handled by not using empower spells

-- Note: CUF:Log is not available at this early load stage

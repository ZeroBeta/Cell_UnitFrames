---@class CUF
local CUF = select(2, ...)

local DB = CUF.DB

---@class CUF.HelpTips
local HelpTips = {}
CUF.HelpTips = HelpTips

-------------------------------------------------
-- WotLK Compatibility: HelpTip system doesn't exist
-- Stub all functions to do nothing
-------------------------------------------------

-- Stub framePool
HelpTips.framePool = { Acquire = function() return nil end }

-- Stub Blizzard functions
function HelpTips:IsShowing(parent, text)
    return false
end

function HelpTips:Acknowledge(parent, text)
    -- No-op
end

function HelpTips:Release(frame)
    -- No-op
end

---@param parent Frame
---@param info HelpTips.Info
---@param relativeRegion Frame?
---@return boolean showing
function HelpTips:Show(parent, info, relativeRegion)
    -- WotLK: HelpTip system not available, always return false
    return false
end

---@param info HelpTips.Info
---@return boolean
function HelpTips:CanShow(info)
    -- WotLK: HelpTip system not available
    return false
end

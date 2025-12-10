---@class CUF
local CUF = select(2, ...)

-------------------------------------------------
-- MARK: Callbacks
-------------------------------------------------

---@alias Callbacks
---| "UpdateMenu"
---| "UpdateWidget"
---| "LoadPageDB"
---| "UpdateVisibility"
---| "UpdateUnitButtons"
---| "UpdateLayout"
---| "ShowOptionsTab"
---| "UpdatePixelPerfect"
---| "UpdateAppearance"
---| "AddonLoaded"
---| "UpdateClickCasting"
local callbacks = {}

---@param eventName Callbacks
---@param onEventFuncName string
---@param onEventFunc function
function CUF:RegisterCallback(eventName, onEventFuncName, onEventFunc)
    if not callbacks[eventName] then callbacks[eventName] = {} end
    callbacks[eventName][onEventFuncName] = onEventFunc
end

---@param eventName Callbacks
---@param onEventFuncName string
function CUF:UnregisterCallback(eventName, onEventFuncName)
    if not callbacks[eventName] then return end
    callbacks[eventName][onEventFuncName] = nil
end

---@param eventName Callbacks
function CUF:UnregisterAllCallbacks(eventName)
    if not callbacks[eventName] then return end
    callbacks[eventName] = nil
end

---@param eventName Callbacks
---@param ... any
function CUF:Fire(eventName, ...)
    if not callbacks[eventName] then return end

    for onEventFuncName, onEventFunc in pairs(callbacks[eventName]) do
        onEventFunc(...)
    end
end

-------------------------------------------------
-- MARK: Event Listeners (WotLK-compatible)
-- Replaces Retail's EventRegistry API
-------------------------------------------------

local eventListenerID = 0
local eventListeners = {}
local eventFrame = CreateFrame("Frame")

---@param event WowEvent
---@param callback fun(ownerId: number, ...: any): boolean
---@return number
function CUF:AddEventListener(event, callback)
    eventListenerID = eventListenerID + 1
    local id = eventListenerID

    if not eventListeners[event] then
        eventListeners[event] = {}
        eventFrame:RegisterEvent(event)
    end

    eventListeners[event][id] = callback

    return id
end

---@param event WowEvent
---@param id number
function CUF:RemoveEventListener(event, id)
    if eventListeners[event] then
        eventListeners[event][id] = nil
        -- Unregister event if no more listeners
        local hasListeners = false
        for _ in pairs(eventListeners[event]) do
            hasListeners = true
            break
        end
        if not hasListeners then
            eventFrame:UnregisterEvent(event)
            eventListeners[event] = nil
        end
    end
end

eventFrame:SetScript("OnEvent", function(self, event, ...)
    if eventListeners[event] then
        for id, callback in pairs(eventListeners[event]) do
            local unregister = callback(id, ...)
            if unregister then
                CUF:RemoveEventListener(event, id)
            end
        end
    end
end)

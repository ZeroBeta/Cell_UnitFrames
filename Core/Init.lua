---@class CUF
local CUF = select(2, ...)
_G.CUF = CUF

CUF.version = 24

CUF.Cell = Cell

---@class CUF.widgets
CUF.widgets = {}
---@class CUF.uFuncs
CUF.uFuncs = {}
---@class CUF.Util
CUF.Util = {}
---@class CUF.database
CUF.DB = {}
---@class CUF.constants
CUF.constants = {}
---@class CUF.defaults
CUF.Defaults = {}
---@class CUF.Debug
CUF.Debug = {}
---@class CUF.builder
CUF.Builder = {}
---@class CUF.API
CUF.API = {}
---@class CUF.PixelPerfect
CUF.PixelPerfect = {}
---@class CUF.Compat
CUF.Compat = {}
---@class CUF.Mixin
CUF.Mixin = {}

---@class CUF.vars
---@field selectedLayout string
---@field selectedUnit Unit
---@field selectedWidget WIDGET_KIND
---@field testMode boolean
---@field isMenuOpen boolean
---@field isRetail boolean
---@field selectedTab string
---@field selectedSubTab string
---@field inEditMode boolean
---@field customPositioning boolean
---@field useScaling boolean
CUF.vars = {}

-- Flavor detection (set based on Cell_Wrath detection)
-- Add nil checks in case Cell hasn't fully initialized yet
CUF.vars.isRetail = (Cell and Cell.isRetail) or false
CUF.vars.isWrath = (Cell and Cell.isWrath) or (Cell and Cell.flavor == "wrath") or true
CUF.vars.isCata = (Cell and Cell.isCata) or false

---@class CUF.unitButtons
---@field [Unit] CUFUnitButton
---@field boss table<string, CUFUnitButton>
CUF.unitButtons = {}

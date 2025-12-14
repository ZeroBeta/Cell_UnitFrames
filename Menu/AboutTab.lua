---@class CUF
local CUF = select(2, ...)

local Cell = CUF.Cell
local F = Cell.funcs
local L = CUF.L
local Menu = CUF.Menu
local DB = CUF.DB
local Util = CUF.Util
local P = CUF.PixelPerfect

---@class AboutTab: Menu.Tab
local aboutTab = {}
aboutTab.id = "aboutTab"
aboutTab.height = 420 -- Approximate height, adjustable
aboutTab.paneHeight = 20

Menu:AddTab(aboutTab)

function aboutTab:IsShown()
    return aboutTab.window and aboutTab.window:IsShown()
end

-------------------------------------------------
-- MARK: Import / Export Logic
-------------------------------------------------

local function Export()
    local exportData = {}
    exportData.CUF_DB = CUF_DB
    exportData.layouts = {}
    exportData.flavor = "WotLK" -- useful metadata
    exportData.version = CUF.version

    -- Get layouts from CellDB
    if CellDB and CellDB.layouts then
        for layoutName, layoutTable in pairs(CellDB.layouts) do
            if layoutTable.CUFUnits then
                exportData.layouts[layoutName] = Util:CopyDeep(layoutTable.CUFUnits)
            end
        end
    end

    return exportData
end

local function Import(data)
    -- Restore CUF_DB
    if data.CUF_DB then
        CUF_DB = data.CUF_DB
    end

    -- Restore layouts
    if data.layouts and CellDB and CellDB.layouts then
        for layoutName, cufUnits in pairs(data.layouts) do
            if CellDB.layouts[layoutName] then
                CellDB.layouts[layoutName].CUFUnits = cufUnits
            end
        end
    end

    ReloadUI()
end

local function Verify(data)
    return data and type(data) == "table" and data.CUF_DB ~= nil
end

-------------------------------------------------
-- MARK: Panes
-------------------------------------------------

local function CreateDescriptionPane(parent)
    local pane = Cell.CreateTitledPane(parent, "Cell Unit Frames", 422, 100)
    pane:SetPoint("TOPLEFT", parent, "TOPLEFT", 5, -5)

    local descText = pane:CreateFontString(nil, "OVERLAY", "CELL_FONT_WIDGET")
    descText:SetPoint("TOPLEFT", 5, -27)
    descText:SetPoint("RIGHT", -10, 0)
    descText:SetJustifyH("LEFT")
    descText:SetSpacing(5)
    descText:SetText(L["ABOUT_DESC"] or "Cell Unit Frames for WotLK 3.3.5a.\n\nPorted by Vollmer.\nOriginal by enderneko.")
    
    return pane
end

local function CreateAuthorPane(parent)
    local pane = Cell.CreateTitledPane(parent, L["Author"], 422, 60)
    
    local text = pane:CreateFontString(nil, "OVERLAY", "CELL_FONT_WIDGET")
    text:SetPoint("TOPLEFT", 5, -27)
    text:SetJustifyH("LEFT")
    text:SetText("Vollmer (Port)\nenderneko (Original)")
    
    return pane
end

local function CreateImportExportPane(parent)
    local pane = Cell.CreateTitledPane(parent, L.ImportExportAllSettings, 422, 50)

    -- Import Button
    local importBtn = Cell.CreateButton(pane, L["Import"], "accent-hover", { 134, 20 })
    importBtn:SetPoint("TOPLEFT", 5, -27)
    
    -- Export Button
    local exportBtn = Cell.CreateButton(pane, L["Export"], "accent-hover", { 134, 20 })
    exportBtn:SetPoint("TOPLEFT", importBtn, "TOPRIGHT", 5, 0)

    -- Backups Button (Placeholder for now as in original)
    -- local backupBtn = Cell.CreateButton(pane, L["Backups"], "accent-hover", {134, 20})
    -- backupBtn:SetPoint("TOPLEFT", exportBtn, "TOPRIGHT", 5, 0)
    
    -- Create the popup logic
    local ieFrame
    
    importBtn:SetScript("OnClick", function()
        if not ieFrame then
            ieFrame = CUF.ImportExport:CreateImportExportFrame("All Settings", Import, Export, Verify)
        end
        ieFrame:ShowImport()
    end)
    
    exportBtn:SetScript("OnClick", function()
        if not ieFrame then
            ieFrame = CUF.ImportExport:CreateImportExportFrame("All Settings", Import, Export, Verify)
        end
        ieFrame:ShowExport()
    end)

    return pane
end


-------------------------------------------------
-- MARK: Create Tab
-------------------------------------------------

function aboutTab:Create()
    local sectionWidth = Menu.tabAnchor:GetWidth()

    self.window = CUF:CreateFrame("CUF_Menu_AboutTab", Menu.window, sectionWidth, self.height, true)
    self.window:SetPoint("TOPLEFT", Menu.tabAnchor, "TOPLEFT")

    -- Description
    local descPane = CreateDescriptionPane(self.window)
    
    -- Author
    local authorPane = CreateAuthorPane(self.window)
    authorPane:SetPoint("TOPLEFT", descPane, "BOTTOMLEFT", 0, -15)
    
    -- Import/Export
    local iePane = CreateImportExportPane(self.window)
    iePane:SetPoint("TOPLEFT", authorPane, "BOTTOMLEFT", 0, -15)
end


-------------------------------------------------
-- MARK: Show/Hide
-------------------------------------------------

function aboutTab:ShowTab()
    if not self.window then
        self:Create()
        self.init = true
    end

    self.window:Show()
end

function aboutTab:HideTab()
    if not self.window or not self.window:IsShown() then return end
    self.window:Hide()
end

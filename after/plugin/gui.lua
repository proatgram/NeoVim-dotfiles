if vim.fn.exists(":GuiFont") ~= 0 then
    vim.cmd("GuiFont Hack Nerd Font Mono")
end

if vim.fn.exists(":GuiTabline") ~= 0 then
    vim.cmd("GuiTabline 0")
end

if vim.fn.exists(":GuiPopupmenu") ~= 0 then
    vim.cmd("GuiPopupmenu 0")
end

if vim.fn.exists(":GuiScrollBar") ~= 0 then
    vim.cmd("GuiScrollBar 1")
end

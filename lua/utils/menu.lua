local M = {}

local Menu = require("nui.menu")

function M.to_menu_items(options)
    local menu_items = {}
    for i, v in ipairs(options) do
        print(v.path)
        menu_items[i] = Menu.item(options[i].path)
    end
    return menu_items
end


local popup_options = {
  relative = "cursor",
  position = {
    row = 1,
    col = 0,
  },
  border = {
    style = "rounded",
    text = {
      top = "[Choose Item]",
      top_align = "center",
    },
  },
  win_options = {
    winhighlight = "Normal:Normal",
  }
}

local keymap = {
    focus_next = { "j", "<Down>", "<Tab>" },
    focus_prev = { "k", "<Up>", "<S-Tab>" },
    close = { "<Esc>", "<C-c>" },
    submit = { "<CR>", "<Space>" },
}

function M.menu_from_list(list, on_close, on_submit, top_text)
    local options = popup_options
    if top_text then
        options.border.text.top = top_text
    end
    local menu = Menu(options, {
        lines = M.to_menu_items(list),
        keymap = keymap,
        on_close = function()
            if on_close then
                on_close()
            end
        end,

        on_submit = function(item)
            if on_submit then
                on_submit(item)
            end
        end,
    })
    return menu
end

return M

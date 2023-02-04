vim.keymap.set("n", "<Leader>gd", ":GitGutterDiffOrig<CR>", {})
vim.keymap.set("n", "]h", "<Plug>(GitGutterNextHunk)", {})
vim.keymap.set("n", "[h", "<Plug>(GitGutterPrevHunk)", {})

vim.g.gitgutter_diff_base = "HEAD"
vim.g.gitgutter_sign_added = '+'
vim.g.gitgutter_sign_modified = '>'
vim.g.gitgutter_sign_removed = '-'
vim.g.gitgutter_sign_removed_first_line = '^'
vim.g.gitgutter_sign_modified_removed = '<'

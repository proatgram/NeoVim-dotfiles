-- Keymaps
vim.keymap.set('i', '<Tab>', 'luasnip#expand_or_jumpable() ? \'<Plug>luasnip-expand-or-jump\' : \'<Tab>\'', {silent = true, expr = true})
vim.keymap.set('i', '<S-Tab>', '<cmd>lua require\'luasnip\'.jump(-1)<Cr>', {noremap = true})
vim.keymap.set('s', '<Tab>', '<cmd>lua require(\'luasnip\').jump(1)<Cr>', {noremap = true})
vim.keymap.set('s', '<S-Tab>', '<cmd>lua require(\'luasnip\').jump(-1)<Cr>', {noremap = true})
vim.keymap.set('i', '<C-E>', 'luasnip#choice_active() ? \'<Plug>luasnip-next-choice\' : \'<C-E>\'', {silent = true, expr = true})
vim.keymap.set('s', '<C-E>', 'luasnip#choice_active() ? \'<Plug>luasnip-next-choice\' : \'<C-E>\'', {silent = true, expr = true})

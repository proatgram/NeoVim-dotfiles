-- set hlsearch                " highlight search results
-- set autoindent              " indent a new line the same amount as the line just typed
-- set number                  " add line numbers
-- set wildmode=longest,list   " get bash-like tab completions
-- filetype plugin indent on   " allows auto-indenting depending on file type
-- set tabstop=4               " number of columns occupied by a tab character
-- set expandtab               " converts tabs to white space
-- set shiftwidth=4            " width for autoindents
-- set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
-- let base16colorspace=256  " Access colors present in 256 colorspace
-- set mouse=a
-- set scrolloff=8

vim.opt.autoindent = true
vim.opt.number = true
vim.opt.wildmode = {longest = true, list = true}
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.mouse = "a"
vim.opt.scrolloff = 8
vim.opt.clipboard = "unnamedplus"
vim.opt.updatetime = 100

local Plug = vim.fn['plug#']

vim.call('plug#begin')
    Plug 'neovim/nvim-lspconfig'

    -- Completion plugin
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'hrsh7th/cmp-vsnip'


    -- Snip.. snip??
    Plug ('L3MON4D3/LuaSnip', {['do'] ='make install_jsregexp'})
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'
    -- Highlighting and stuff
    Plug ('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn['TSUpdate']})

    -- Required for telescope
    Plug 'nvim-lua/plenary.nvim'

    Plug 'nvim-telescope/telescope.nvim'

    Plug 'nvim-tree/nvim-web-devicons'

    -- Provides a simple package manager, for example LSP's (replaces nvim-lsp-installer)
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'

    -- Nerdy comments B)
    Plug 'preservim/nerdcommenter'

    -- Browse tags of a file and get it's structure ohhhh yeahhh babbyyy
    Plug 'preservim/tagbar'

    -- Required for lualine and barbar
    Plug 'kyazdani42/nvim-web-devicons'

    -- Nice line at the bottom for pertyness :)
    Plug 'nvim-lualine/lualine.nvim'

    -- Semantic highlighting let's go??
    Plug 'dense-analysis/ale'

    Plug 'romgrk/barbar.nvim'

    Plug 'folke/neodev.nvim'
vim.call('plug#end')

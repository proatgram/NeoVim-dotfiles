local Plug = vim.fn['plug#']

vim.call('plug#begin')
    -- Simple thing for NeoVim LSP
    Plug 'neovim/nvim-lspconfig'

    -- Echoes diagnostic messages from LSP
    Plug 'seblj/nvim-echo-diagnostics'

    -- Completion plugin
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'saadparwaiz1/cmp_luasnip'
    Plug 'hrsh7th/cmp-vsnip'
    Plug 'hrsh7th/cmp-nvim-lsp-signature-help'

    -- Autopairs stuff like () {} [] "" ''
    Plug 'windwp/nvim-autopairs'

    -- Snippet templates for LuaSnip``
    Plug 'rafamadriz/friendly-snippets'

    -- Snip.. snip??
    Plug ('L3MON4D3/LuaSnip', {['do'] ='make install_jsregexp'})
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'

    -- Highlighting and stuff
    Plug ('nvim-treesitter/nvim-treesitter', {['do'] = vim.fn['TSUpdate']})

    -- Required for telescope
    Plug 'nvim-lua/plenary.nvim'

    -- A fast file finder
    Plug 'nvim-telescope/telescope.nvim'

    Plug 'nvim-tree/nvim-web-devicons'

    -- Provides a simple package manager, for example LSP's (replaces nvim-lsp-installer)
    Plug 'williamboman/mason.nvim'
    Plug 'williamboman/mason-lspconfig.nvim'
    Plug 'jay-babu/mason-nvim-dap.nvim'
    Plug 'rcarriga/nvim-dap-ui'
    Plug 'nvim-neotest/nvim-nio'

    -- Nerdy comments B)
    Plug 'preservim/nerdcommenter'

    -- Browse tags of a file and get it's structure ohhhh yeahhh babbyyy
    Plug 'preservim/tagbar'

    -- Required for lualine and barbar
    Plug 'kyazdani42/nvim-web-devicons'

    -- Nice line at the bottom for pertyness :)
    Plug 'nvim-lualine/lualine.nvim'

    -- Bar bar hehe
    Plug 'romgrk/barbar.nvim'

    -- For NeoVim Lua autocompletion and LSP info
    Plug 'folke/neodev.nvim'

    -- Colors
    Plug ('catppuccin/nvim', { as = 'catppuccin' })
    Plug ('folke/tokyonight.nvim', { branch = 'main' })

    -- Git info and stuff B3
    Plug 'airblade/vim-gitgutter'

    -- More Git stuff
    Plug 'jreybert/vimagit'

    -- Evemm more Git stuff
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'

    Plug 'nvim-tree/nvim-tree.lua'

    Plug ('akinsho/toggleterm.nvim', {tag = '*'})

    Plug 'mfussenegger/nvim-dap'

    Plug 'MunifTanjim/nui.nvim'

    Plug 'folke/trouble.nvim'

    -- PlatformIO support
    Plug 'normen/vim-pio'

    -- Markdown previews
    Plug ('iamcco/markdown-preview.nvim', { ['do'] = "mkdp#util#install()", ['for'] = {'markdown', 'vim-plug'}})

    -- Discord Presence Integration
    Plug 'andweeb/presence.nvim'

    -- rayso.nvim Screenshots from Ray.so
    Plug 'TobinPalmer/rayso.nvim'
    -- A noice new UI
    Plug 'folke/noice.nvim'

    -- Option dependancy of noice.nvim
    Plug 'rcarriga/nvim-notify'

    -- GitHub integration
    Plug 'pwntester/octo.nvim'

vim.call('plug#end')

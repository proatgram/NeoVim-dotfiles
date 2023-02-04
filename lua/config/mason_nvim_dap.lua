require("config.lsp")
local dap = require("dap")

require('mason-nvim-dap').setup({
    ensure_installed = {'codelldb', 'cpptools', 'bash-debug-adapter', 'java-debug-adapter'},
    automatic_setup = true
})

require("config.lsp")
local dap = require("dap")

require('mason-nvim-dap').setup({
    ensure_installed = {'codelldb', 'cppdbg', 'bash', 'javadbg'}, -- These need to be mapped to the actual plugin name, see https://github.com/jay-babu/mason-nvim-dap.nvim/blob/main/lua/mason-nvim-dap/mappings/source.lua
    automatic_setup = true
})

require('mason-nvim-dap').setup_handlers {
    function(source_name)
      -- all sources with no handler get passed here


      -- Keep original functionality of `automatic_setup = true`
      require('mason-nvim-dap.automatic_setup')(source_name)
    end,
    -- Example configuration for python, while all others will *maybe* get passed to the automatic setup?
    python = function(source_name)
        dap.adapters.python = {
	        type = "executable",
	        command = "/usr/bin/python3",
	        args = {
		        "-m",
		        "debugpy.adapter",
	        },
        }

        dap.configurations.python = {
	        {
		        type = "python",
		        request = "launch",
		        name = "Launch file",
		        program = "${file}", -- This configuration will launch the current file if used.
	        },
        }
    end,

    codelldb = function(source_name)
        dap.adapters.lldb = {
            type = 'executable',
            command = "/usr/bin/lldb-vscode", -- io.popen("which lldb-vscode"), -- adjust as needed, must be absolute path
            name = 'lldb'
        }
        dap.configurations.cpp = {
            {
            name = 'launch',
            type = 'lldb',
            program = function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end,
            cwd = '${workspaceFolder}',
            stopOnEntry = false,
            args = {}
            -- 💀
            -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
            --
            --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
            --
            -- Otherwise you might get the following error:
            --
            --    Error on launch: Failed to attach to the target process
            --
            -- But you should be aware of the implications:
            -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
            -- runInTerminal = false,
            },
        }
    end,
}

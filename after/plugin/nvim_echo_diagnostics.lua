-- vim.api.nvim_create_autocmd({"CursorHold"}, {
--     pattern = {"*"},
--     callback = function(ev)
--         require('echo-diagnostics').echo_line_diagnostic()
--     end
-- })
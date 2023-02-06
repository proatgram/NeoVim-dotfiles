local M = {}

function M.find_executable()
  local handle
  if vim.fn.has("win32") == 1 then
    handle = io.popen("dir /b /s /o:gn *.exe 2>nul")
  else
    handle = io.popen("find . -type f -executable -print 2>/dev/null")
  end

  local result
  if handle then
    result = handle:read("*a")
    handle:close()
  end

  if result and result ~= "" then
    local executables = {}
    for path in string.gmatch(result, "([^\n]+)\n") do
      table.insert(executables, {path = path})
    end
    return executables
  else
    return {{path = vim.fn.getcwd()}}
  end
end

local function select_executable()
  local options = M.find_executable()
  local paths = {}
  for i, v in ipairs(options) do
    paths[i] = v.path
  end

  local choice = vim.fn.complete(paths, 'customlist,noselect')
  if choice == '' then
    return nil
  else
    return choice
  end
end

return M

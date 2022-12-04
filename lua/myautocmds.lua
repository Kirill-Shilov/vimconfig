local au = require('au')
local cmd = vim.api.nvim_command

au.BufLeave = {
  {'*.ex', '*.exs', '*.py', '*.lua'},
  function()
    cmd("write")
  end,
}

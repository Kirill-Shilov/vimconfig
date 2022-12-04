local dap = require('dap')
dap.adapters.mix_task = {
  type = 'executable',
  command = '/home/noob/.cache/nvim/elixir.nvim/installs/elixir-lsp/elixir-ls/tags_v0.10.0/1.13.4-25/debugger.sh', -- debugger.bat for windows
  args = {}
}

dap.configurations.elixir = {
  {
    type = "mix_task",
    name = "mix test",
    task = 'test',
    taskArgs = {"--trace"},
    request = "launch",
    startApps = true, -- for Phoenix projects
    projectDir = "${workspaceFolder}",
    requireFiles = {
      "test/**/test_helper.exs",
      "test/**/*_test.exs"
    }
  },
}

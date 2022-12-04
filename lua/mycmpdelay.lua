M = {}

local cmp = require('cmp')
-- local asdf = require'cmp'.complite({ reason = require('cmp').ContextReason.Auto })

local uv = vim.loop

M._state = { timer = uv.new_timer() }

M.setup = function()
  vim.api.nvim_create_autocmd("TextChangedI", {
    group = vim.api.nvim_create_augroup("timer", { clear = true }),
    callback = M.callback
  })
end

M.callback = function()
  uv.timer_stop(M._state.timer)
  uv.timer_start(M._state.timer, 1000, 0, M.complite)
end

M.complite = function()
  vim.schedule_wrap(cmp.get_entries())
end

return M.setup()

--M = {}
--
--local cmp = require('cmp')
---- local asdf = require'cmp'.complite({ reason = require('cmp').ContextReason.Auto })
--
--local uv = vim.loop
--
--M._state = { 
--            timer = uv.new_timer(),
--            collback_func = nil
--            }
--
--M.setup = function(compliter)
--  M._state.collback_func = compliter
----  vim.api.nvim_create_autocmd("TextChangedI", {
----    group = vim.api.nvim_create_augroup("timer", { clear = true }),
----    callback = M.callback(compliter)
----  })
--end
--
--M.callback = function()
--  uv.timer_stop(M._state.timer)
--  uv.timer_start(M._state.timer, 1000, 0, M.complite)
--  print('start')
--end
--
--M.complite = function()
--  vim.schedule_wrap(M._state.collback_func())
--end
--
--return M.setup
--

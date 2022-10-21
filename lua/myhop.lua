local hop = require("hop")
local directions = require("hop.hint").HintDirection

hop.setup {
    keys = 'wertyuiosdfghjklxcvbnm',
    jump_on_sole_occurrence = false,
    case_insensitive = true,
    multi_windows = true,
}


vim.api.nvim_set_keymap('n', '<leader>s', "<cmd>lua require'hop'.hint_char2({ direction = nil, current_line_only = false })<cr>", {})

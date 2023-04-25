local builtin = require('telescope.builtin')

--vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>ps', , { desc = "Test Description" })

local wk = require("which-key")
wk.register({
    p = {
        name = "project",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        s = { "<cmd>Telescope live_grep<cr>", "Find in Files" },
    },
}, { prefix = "<leader>" })

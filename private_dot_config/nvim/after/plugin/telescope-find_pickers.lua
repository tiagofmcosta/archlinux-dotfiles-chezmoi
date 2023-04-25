local telescope = require('telescope')

telescope.load_extension('find_pickers')

vim.keymap.set(
    "n",
    "<leader><leader>",
    telescope.extensions.find_pickers.find_pickers
)

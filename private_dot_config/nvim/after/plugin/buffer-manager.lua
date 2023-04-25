require("buffer_manager").setup({
    line_keys = "1234567890",
    select_menu_item_commands = {
        edit = {
            key = "<CR>",
            command = "edit"
        }
    },
    focus_alternate_buffer = false,
    short_file_names = false,
    short_term_names = false,
})

local bm = require("buffer_manager.ui")
local wk = require("which-key")
wk.register({
    ["<M-Tab>"] = { bm.toggle_quick_menu , "Switch Buffers" },
})

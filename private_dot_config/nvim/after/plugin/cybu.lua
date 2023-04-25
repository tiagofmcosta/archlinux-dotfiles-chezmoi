require("cybu").setup()

vim.keymap.set("n", "K", "<Plug>(CybuPrev)")
vim.keymap.set("n", "J", "<Plug>(CybuNext)")
vim.keymap.set({ "n", "v" }, "<c-s-tab>", "<plug>(CybuLastusedPrev)")
vim.keymap.set({ "n", "v" }, "<c-tab>", "<plug>(CybuLastusedNext)")

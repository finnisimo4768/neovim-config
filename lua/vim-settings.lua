vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = ""

vim.keymap.set("", "<up>", "<nop>", { noremap = true })
vim.keymap.set("", "<down>", "<nop>", { noremap = true })
vim.keymap.set("i", "<up>", "<nop>", { noremap = true })
vim.keymap.set("i", "<down>", "<nop>", { noremap = true })

vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<C-j>", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-s>v", "<cmd>vsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-s>h", "<cmd>split<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-r>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-y>", "<cmd>CompilerStop<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-c>t", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-c>r", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>gw", ":Glow README.md<CR>", { noremap = true, silent = true })

local format_on_save = function()
	vim.lsp.buf.format()
end

vim.api.nvim_create_autocmd("BufWritePre", {
	callback = format_on_save,
})

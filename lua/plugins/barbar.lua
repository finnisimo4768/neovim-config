return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {},

		version = "^1.0.0",
		config = function()
			require("barbar").setup({
				options = {
					show_tab_indicators = true,
					show_close_icon = true,
					separator_style = "thin",
					enforce_regular_tabs = false,
					always_show_bufferline = false,
				},
			})
			vim.keymap.set("n", "<Tab>", ":BufferNext<CR>", { noremap = true, silent = true })
			vim.keymap.set("n", "<S-Tab>", ":BufferPrevious<CR>", { noremap = true, silent = true })
			vim.keymap.set("n", "<C-x>", ":BufferClose<CR>", { noremap = true, silent = true })
		end,
	},
}

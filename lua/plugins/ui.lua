return {
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "tokyonight",
					globalstatus = true,
					icons_enabled = false,
				},
			})
		end,
	},

	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		config = function()
			local wk = require("which-key")

			wk.setup({
				preset = "modern",
				delay = 300,
				notify = false,
				win = {
					border = "rounded",
					padding = { 1, 2 },
					wo = {
						winblend = 0,
					},
				},
				layout = {
					width = { min = 24 },
					spacing = 3,
				},
				plugins = {
					spelling = {
						enabled = false,
					},
				},
			})

			wk.add({
				{ "<leader>f", group = "find" },
				{ "<leader>c", group = "code" },
				{ "<leader>b", group = "buffer" },
				{ "<leader>s", group = "source/settings" },
				{ "<leader>l", group = "language/diagnostics" },
				{ "<leader>g", group = "git" },
        { "<leader>u", group = "ui/toggles" }, 

				{ "<leader>w", desc = "write file" },
				{ "<leader>q", desc = "quit window" },
				{ "<leader>Q", desc = "quit all without saving" },
			})
		end,
	},
}

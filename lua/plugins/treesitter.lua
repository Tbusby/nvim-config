return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").setup({
				ensure_installed = {
					"python",
					"lua",
					"bash",
					"json",
					"yaml",
					"toml",
					"terraform",
					"hcl",
					"markdown",
					"markdown_inline",
					"vim",
					"vimdoc",
				},
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}

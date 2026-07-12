return {
	{
		"nvim-lualine/lualine.nvim",
		event = "VeryLazy",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local function lsp_clients()
				local clients = vim.lsp.get_clients({ bufnr = 0 })
				if #clients == 0 then
					return ""
				end

				local name_map = {
					lua_ls = "lua",
					pyright = "pyright",
					ruff = "ruff",
					terraformls = "terraform",
					yamlls = "yaml",
					ansiblels = "ansible",
					bashls = "bash",
					jsonls = "json",
				}

				local names = {}
				for _, client in ipairs(clients) do
					table.insert(names, name_map[client.name] or client.name)
				end

				return table.concat(names, ", ")
			end

			local function python_env()
				local venv = os.getenv("VIRTUAL_ENV")
				if venv then
					return "venv: " .. vim.fn.fnamemodify(venv, ":t")
				end

				local conda = os.getenv("CONDA_DEFAULT_ENV")
				if conda then
					return "conda: " .. conda
				end

				return ""
			end

			require("lualine").setup({
				options = {
					theme = "tokyonight",
					globalstatus = true,
					icons_enabled = true,
					component_separators = { left = "|", right = "|" },
					section_separators = { left = "", right = "" },
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff", "diagnostics" },
					lualine_c = {
						{
							"filename",
							path = 1,
						},
					},
					lualine_x = {
            python_env,
						lsp_clients,
						"filetype",
					},
					lualine_y = { "progress" },
					lualine_z = { "location" },
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

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

-- General
keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Write file" })
keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit window" })
keymap.set("n", "<leader>Q", "<cmd>qa!<cr>", { desc = "Quit all without saving" })

-- Clear search highlighting
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Window navigation
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Better scrolling / centering
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
keymap.set("n", "n", "nzz", { desc = "Next search result centered" })
keymap.set("n", "N", "Nzz", { desc = "Previous search result centered" })

-- Buffer navigation
keymap.set("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

-- Quick config reload during learning
keymap.set("n", "<leader>sr", "<cmd>source $MYVIMRC<cr>", { desc = "Source config" })

-- UI toggles
keymap.set("n", "<leader>ul", function()
	vim.wo.list = not vim.wo.list
end, { desc = "Toggle list mode" })

keymap.set("n", "<leader>un", function()
	vim.wo.relativenumber = not vim.wo.relativenumber
end, { desc = "Toggle relative numbers" })

keymap.set("n", "<leader>uw", function()
	vim.wo.wrap = not vim.wo.wrap
end, { desc = "Toggle wrap" })

keymap.set("n", "<leader>uc", function()
	vim.wo.cursorline = not vim.wo.cursorline
end, { desc = "Toggle cursorline" })

keymap.set("n", "<leader>us", function()
	vim.wo.spell = not vim.wo.spell
end, { desc = "Toggle spell check" })

keymap.set("n", "<leader>ud", function()
	local current = vim.diagnostic.config().virtual_text
	vim.diagnostic.config({
		virtual_text = not current,
	})
end, { desc = "Toggle diagnostic virtual text" })

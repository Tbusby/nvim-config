local opt = vim.opt

-- Line numbers
opt.number = true
opt.relativenumber = true

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- UI
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
--opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Behavior
opt.mouse = "a"
opt.clipboard = ""
opt.undofile = true
opt.updatetime = 250
opt.timeoutlen = 300

-- Better completion behavior
opt.completeopt = "menu,menuone,noselect"

-- Invisible characters (optional but useful)
opt.list = false
opt.listchars = {
	tab = "» ",
	trail = "·",
	nbsp = "␣",
}

-- Keep a column for diagnostics/signs
opt.signcolumn = "yes"

-- Recommended for markdown/yaml-like readability? leave wrapping off globally
-- and enable per-filetype later if desired

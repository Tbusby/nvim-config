local function set_highlights()
	-- ============================================================
	-- Core floating windows
	-- ============================================================
	vim.api.nvim_set_hl(0, "NormalFloat", {
		bg = "#555a94",
		fg = "#c0caf5",
	})

	vim.api.nvim_set_hl(0, "FloatBorder", {
		bg = "#555a94",
		fg = "#7aa2f7",
	})

	vim.api.nvim_set_hl(0, "FloatTitle", {
		bg = "#555a94",
		fg = "#e0af68",
		bold = true,
	})

	-- ============================================================
	-- Diagnostics
	-- ============================================================
	vim.api.nvim_set_hl(0, "DiagnosticFloatingError", {
		fg = "#f7768e",
		bold = true,
	})

	vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", {
		fg = "#e0af68",
		bold = true,
	})

	vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", {
		fg = "#7dcfff",
		bold = true,
	})

	vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", {
		fg = "#73daca",
		bold = true,
	})

	vim.api.nvim_set_hl(0, "DiagnosticSignError", {
		fg = "#f7768e",
		bg = "NONE",
	})

	vim.api.nvim_set_hl(0, "DiagnosticSignWarn", {
		fg = "#e0af68",
		bg = "NONE",
	})

	vim.api.nvim_set_hl(0, "DiagnosticSignInfo", {
		fg = "#7dcfff",
		bg = "NONE",
	})

	vim.api.nvim_set_hl(0, "DiagnosticSignHint", {
		fg = "#73daca",
		bg = "NONE",
	})

	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextError", {
		fg = "#f7768e",
		bg = "#2a1f2d",
	})

	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextWarn", {
		fg = "#e0af68",
		bg = "#2f2a1f",
	})

	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextInfo", {
		fg = "#7dcfff",
		bg = "#1f2a30",
	})

	vim.api.nvim_set_hl(0, "DiagnosticVirtualTextHint", {
		fg = "#73daca",
		bg = "#1f2b2b",
	})

	vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", {
		undercurl = true,
		sp = "#f7768e",
	})

	vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", {
		undercurl = true,
		sp = "#e0af68",
	})

	vim.api.nvim_set_hl(0, "DiagnosticUnderlineInfo", {
		undercurl = true,
		sp = "#7dcfff",
	})

	vim.api.nvim_set_hl(0, "DiagnosticUnderlineHint", {
		undercurl = true,
		sp = "#73daca",
	})

	-- ============================================================
	-- Completion menu
	-- ============================================================
	vim.api.nvim_set_hl(0, "Pmenu", {
		bg = "#1f2335",
		fg = "#c0caf5",
	})

	vim.api.nvim_set_hl(0, "PmenuSel", {
		bg = "#2a2f44",
		fg = "#ffffff",
		bold = true,
	})

	vim.api.nvim_set_hl(0, "PmenuThumb", {
		bg = "#7aa2f7",
	})

	vim.api.nvim_set_hl(0, "PmenuSbar", {
		bg = "#16161e",
	})

	-- ============================================================
	-- Telescope
	-- ============================================================
	vim.api.nvim_set_hl(0, "TelescopeNormal", {
		bg = "#1f2335",
		fg = "#c0caf5",
	})

	vim.api.nvim_set_hl(0, "TelescopeBorder", {
		bg = "#1f2335",
		fg = "#7aa2f7",
	})

	vim.api.nvim_set_hl(0, "TelescopePromptNormal", {
		bg = "#24283b",
		fg = "#c0caf5",
	})

	vim.api.nvim_set_hl(0, "TelescopePromptBorder", {
		bg = "#24283b",
		fg = "#7aa2f7",
	})

	vim.api.nvim_set_hl(0, "TelescopePromptTitle", {
		bg = "#7aa2f7",
		fg = "#1f2335",
		bold = true,
	})

	vim.api.nvim_set_hl(0, "TelescopePreviewTitle", {
		bg = "#73daca",
		fg = "#1f2335",
		bold = true,
	})

	vim.api.nvim_set_hl(0, "TelescopeResultsTitle", {
		bg = "#e0af68",
		fg = "#1f2335",
		bold = true,
	})

	vim.api.nvim_set_hl(0, "TelescopeSelection", {
		bg = "#2a2f44",
		fg = "#ffffff",
		bold = true,
	})

	vim.api.nvim_set_hl(0, "TelescopeMatching", {
		fg = "#e0af68",
		bold = true,
	})

	-- ============================================================
	-- which-key
	-- ============================================================
	vim.api.nvim_set_hl(0, "WhichKeyNormal", {
		bg = "#1f2335",
		fg = "#c0caf5",
	})

	vim.api.nvim_set_hl(0, "WhichKeyBorder", {
		bg = "#1f2335",
		fg = "#7aa2f7",
	})

	vim.api.nvim_set_hl(0, "WhichKeyTitle", {
		bg = "#1f2335",
		fg = "#e0af68",
		bold = true,
	})

	vim.api.nvim_set_hl(0, "WhichKey", {
		fg = "#7aa2f7",
		bold = true,
	})

	vim.api.nvim_set_hl(0, "WhichKeyGroup", {
		fg = "#bb9af7",
		bold = true,
	})

	vim.api.nvim_set_hl(0, "WhichKeyDesc", {
		fg = "#c0caf5",
	})

	vim.api.nvim_set_hl(0, "WhichKeySeparator", {
		fg = "#565f89",
	})

	vim.api.nvim_set_hl(0, "WhichKeyValue", {
		fg = "#9aa5ce",
	})

	-- ============================================================
	-- General UI polish
	-- ============================================================
	vim.api.nvim_set_hl(0, "WinSeparator", {
		fg = "#3b4261",
		bg = "NONE",
	})

	vim.api.nvim_set_hl(0, "CursorLine", {
		bg = "#24283b",
	})

	vim.api.nvim_set_hl(0, "Visual", {
		bg = "#33467c",
	})
end

vim.api.nvim_create_autocmd("ColorScheme", {
	callback = set_highlights,
})

set_highlights()

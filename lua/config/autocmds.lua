local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Highlight yanked text briefly
autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Python uses 4 spaces
autocmd("FileType", {
  pattern = "python",
  group = vim.api.nvim_create_augroup("python-indent", { clear = true }),
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})

-- YAML often benefits from wrapping off still, but 2-space indent explicitly
autocmd("FileType", {
  pattern = { "yaml", "yml" },
  group = vim.api.nvim_create_augroup("yaml-settings", { clear = true }),
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})

autocmd({ "BufRead", "BufNewFile" }, {
  group = augroup("ansible-filetype", { clear = true }),
  pattern = {
    "*/playbooks/*.yml",
    "*/playbooks/*.yaml",
    "*/roles/*/tasks/*.yml",
    "*/roles/*/tasks/*.yaml",
    "*/roles/*/handlers/*.yml",
    "*/roles/*/handlers/*.yaml",
    "*/group_vars/*.yml",
    "*/group_vars/*.yaml",
    "*/host_vars/*.yml",
    "*/host_vars/*.yaml",
    "*/ansible/*.yml",
    "*/ansible/*.yaml",
    "*/site.yml",
    "*/site.yaml",
  },
  callback = function()
    vim.bo.filetype = "yaml.ansible"
  end,
})


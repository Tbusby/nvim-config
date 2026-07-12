# Neovim Config

A modular Lua-based Neovim config for:

- Python
- Terraform / HCL
- YAML
- Ansible
- Kubernetes / DevOps workflows

Built for **Neovim 0.12+** using modern APIs and plugin configuration.

## Features

- `lazy.nvim` plugin management
- modern LSP setup with `vim.lsp.config()` / `vim.lsp.enable()`
- completion with `nvim-cmp`
- manual formatting with `conform.nvim`
- Treesitter syntax parsing/highlighting
- Telescope fuzzy finding
- Git integration with `gitsigns.nvim`
- Oil file navigation
- which-key keybinding hints
- lualine statusline

## Install

Clone into your Neovim config directory:

```bash
git clone <your-repo-url> ~/.config/nvim
```

Start Neovim:

```bash
nvim
```

Plugins will bootstrap automatically on first launch.

## Requirements

- Neovim **0.12+**
- `git`
- `ripgrep`
- `fd`
- `node`
- `python3`

Optional but recommended, depending on your workflow:

- `ruff`
- `stylua`
- `shfmt`
- `prettier`
- `terraform`
- `ansible`
- `ansible-lint`

## Useful Commands

```vim
:Lazy
:Mason
:TSUpdate
:checkhealth
:checkhealth vim.lsp
```

## Keybindings

Leader key: `Space`

### General
- `<leader>w` — save
- `<leader>q` — quit
- `<leader>Q` — quit all without saving
- `<leader>bd` — delete buffer

### Find
- `<leader>ff` — find files
- `<leader>fg` — live grep
- `<leader>fb` — buffers
- `<leader>fh` — help tags

### Code / LSP
- `gd` — go to definition
- `gr` — references
- `K` — hover docs
- `<leader>ca` — code action
- `<leader>cr` — rename
- `<leader>cd` — line diagnostics
- `[d` / `]d` — previous / next diagnostic
- `<leader>cf` — format buffer

### Git
- `<leader>gs` — stage hunk
- `<leader>gr` — reset hunk
- `<leader>gp` — preview hunk
- `<leader>gb` — blame line
- `<leader>gd` — diff this
- `[h` / `]h` — previous / next hunk

### Toggles
- `<leader>ul` — list mode
- `<leader>un` — relative numbers
- `<leader>uw` — wrap
- `<leader>uc` — cursorline
- `<leader>us` — spell check
- `<leader>ud` — diagnostic virtual text

### Other
- `-` — open parent directory in Oil
- `gcc` — comment current line
- `gc` (visual) — comment selection

## Notes

- Formatting is **manual only**
- YAML / Kubernetes / Ansible support is configured through LSP and schema support
- This repo should contain only the Neovim config itself (`~/.config/nvim`)
- Plugin/runtime data under `~/.local/share/nvim` can be recreated automatically

## Troubleshooting

If something breaks, check:

```vim
:messages
:checkhealth
:checkhealth vim.lsp
```

If plugin state gets corrupted, you can usually remove downloaded plugin data and let it reinstall:

```bash
rm -rf ~/.local/share/nvim/lazy
```

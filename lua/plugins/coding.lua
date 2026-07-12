return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = false }),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "path" },
          { name = "buffer" },
        }),
      })
    end,
  },

  {
    "stevearc/conform.nvim",
    event = "VeryLazy",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format" },
        lua = { "stylua" },
        terraform = { "terraform_fmt" },
        hcl = { "terraform_fmt" },
        json = { "prettier" },
        markdown = { "prettier" },
        sh = { "shfmt" },
      },
    },
    config = function(_, opts)
      require("conform").setup(opts)

      vim.keymap.set({ "n", "v" }, "<leader>cf", function()
        require("conform").format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        })
      end, { desc = "Format buffer" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      indent = {
        char = "│",
      },
      scope = {
        enabled = false,
      },
      exclude = {
        filetypes = {
          "help",
          "lazy",
          "mason",
          "TelescopePrompt",
          "TelescopeResults",
          "terminal",
          "dashboard",
          "oil",
        },
      },
    },
  },
}

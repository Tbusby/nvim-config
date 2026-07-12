return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    opts = {},
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
    },
    opts = {
      ensure_installed = {
        "lua_ls",
        "pyright",
        "ruff",
        "terraformls",
        "yamlls",
        "ansiblels",
        "bashls",
        "jsonls",
      },
    },
  },

  {
    "b0o/SchemaStore.nvim",
    lazy = true,
  },

  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "b0o/SchemaStore.nvim",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local on_attach = function(_, bufnr)
        local opts = { buffer = bufnr }

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, {
          desc = "Go to definition",
        }))
        vim.keymap.set("n", "gr", vim.lsp.buf.references, vim.tbl_extend("force", opts, {
          desc = "References",
        }))
        vim.keymap.set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, {
          desc = "Hover documentation",
        }))
        vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, vim.tbl_extend("force", opts, {
          desc = "Rename symbol",
        }))
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, {
          desc = "Code action",
        }))
        vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, vim.tbl_extend("force", opts, {
          desc = "Line diagnostics",
        }))
        vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, vim.tbl_extend("force", opts, {
          desc = "Previous diagnostic",
        }))
        vim.keymap.set("n", "]d", vim.diagnostic.goto_next, vim.tbl_extend("force", opts, {
          desc = "Next diagnostic",
        }))
      end

      local function yaml_schemas()
        local ok, schemastore = pcall(require, "schemastore")
        if not ok then
          return {}
        end

        local schemas = {}

        for _, schema in ipairs(schemastore.yaml.schemas()) do
          if schema.url and schema.fileMatch then
            schemas[schema.url] = schema.fileMatch
          end
        end

        schemas["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/master-standalone-strict/all.json"] = {
          "*.k8s.yaml",
          "*.k8s.yml",
          "k8s/*.yaml",
          "k8s/*.yml",
          "kubernetes/*.yaml",
          "kubernetes/*.yml",
          "manifests/*.yaml",
          "manifests/*.yml",
        }

        schemas["https://json.schemastore.org/ansible-stable-2.9.json"] = {
          "playbook.yml",
          "playbook.yaml",
          "playbooks/*.yml",
          "playbooks/*.yaml",
          "roles/*/tasks/*.yml",
          "roles/*/tasks/*.yaml",
          "roles/*/handlers/*.yml",
          "roles/*/handlers/*.yaml",
          "group_vars/*.yml",
          "group_vars/*.yaml",
          "host_vars/*.yml",
          "host_vars/*.yaml",
        }

        return schemas
      end

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        on_attach = on_attach,
      })

      vim.lsp.config("pyright", {
        capabilities = capabilities,
        on_attach = on_attach,
      })

      vim.lsp.config("ruff", {
        capabilities = capabilities,
        on_attach = on_attach,
      })

      vim.lsp.config("terraformls", {
        capabilities = capabilities,
        on_attach = on_attach,
      })

      vim.lsp.config("yamlls", {
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          yaml = {
            keyOrdering = false,
            validate = true,
            completion = true,
            hover = true,
            format = {
              enable = true,
            },
            schemaStore = {
              enable = false,
              url = "",
            },
            schemas = yaml_schemas(),
          },
        },
      })

      vim.lsp.config("ansiblels", {
        capabilities = capabilities,
        on_attach = on_attach,
        filetypes = { "yaml.ansible" },
        settings = {
          ansible = {
            ansible = {
              path = "ansible",
            },
            executionEnvironment = {
              enabled = false,
            },
            python = {
              interpreterPath = "python3",
            },
            validation = {
              enabled = true,
              lint = {
                enabled = true,
                path = "ansible-lint",
              },
            },
          },
        },
      })

      vim.lsp.config("bashls", {
        capabilities = capabilities,
        on_attach = on_attach,
      })

      vim.lsp.config("jsonls", {
        capabilities = capabilities,
        on_attach = on_attach,
      })

      vim.lsp.enable("lua_ls")
      vim.lsp.enable("pyright")
      vim.lsp.enable("ruff")
      vim.lsp.enable("terraformls")
      vim.lsp.enable("yamlls")
      vim.lsp.enable("ansiblels")
      vim.lsp.enable("bashls")
      vim.lsp.enable("jsonls")
    end,
  },
}

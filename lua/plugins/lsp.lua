return {
  -- Mason: LSP/DAP/Linter/Formatter installer
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup({
        ui = {
          border = "rounded",
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },

  -- Bridge between Mason and lspconfig
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        -- Add servers here - they'll be auto-installed
        ensure_installed = {
          "gopls",      -- Go
          "pyright",    -- Python (add more as needed)
          "lua_ls",     -- Lua
        },
        automatic_installation = true,
      })
    end,
  },

  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")

      -- Shared on_attach function for all LSPs
      local on_attach = function(client, bufnr)
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end

        -- LSP keymaps
        map("n", "gd", vim.lsp.buf.definition, "Go to definition")
        map("n", "gD", vim.lsp.buf.declaration, "Go to declaration")
        map("n", "gr", vim.lsp.buf.references, "Find references")
        map("n", "gi", vim.lsp.buf.implementation, "Go to implementation")
        map("n", "K", vim.lsp.buf.hover, "Hover docs")
        map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
        map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
        map("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, "Format")
        map("n", "[d", vim.diagnostic.goto_prev, "Previous diagnostic")
        map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")
        map("n", "<leader>e", vim.diagnostic.open_float, "Show diagnostic")
      end

      -- Shared capabilities (for completion)
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      -- If using blink.cmp, it handles capabilities automatically

      -- ═══════════════════════════════════════════════════════════
      -- LANGUAGE SERVERS
      -- Add new languages here
      -- ═══════════════════════════════════════════════════════════

      -- Go
      lspconfig.gopls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
              shadow = true,
            },
            staticcheck = true,
            gofumpt = true,
            completeUnimported = true,
            usePlaceholders = true,
          },
        },
      })

      -- Python
      lspconfig.pyright.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
            },
          },
        },
      })

      -- Lua (for nvim config)
      lspconfig.lua_ls.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = { enable = false },
          },
        },
      })

      -- ═══════════════════════════════════════════════════════════
      -- DIAGNOSTICS UI
      -- ═══════════════════════════════════════════════════════════
      vim.diagnostic.config({
        virtual_text = { prefix = "●" },
        signs = true,
        underline = true,
        update_in_insert = false,
        float = { border = "rounded" },
      })
    end,
  },
}

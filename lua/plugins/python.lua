local lspconfig = require("lspconfig")

-- Cấu hình LSP cho basedpyright
lspconfig.basedpyright.setup({
  settings = {
    basedpyright = {
      disableOrganizeImports = true,
    },
  },
})

-- Cấu hình LSP cho ruff
lspconfig.ruff_lsp.setup({
  init_options = {
    settings = {
      logLevel = "error",
    },
  },
  on_init = function(client)
    client.config.cmd_env = { RUFF_TRACE = "messages" }
  end,
})

-- Trả về cấu hình plugin cho Lazy.nvim
return {
  {
    "nvim-treesitter/nvim-treesitter",
    optional = true,
    opts = {
      ensure_installed = { "python" },
    },
  },

  {
    "williamboman/mason-lspconfig.nvim",
    optional = true,
    opts = {
      ensure_installed = { "basedpyright", "ruff" },
    },
  },

  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
      },
    },
  },
}


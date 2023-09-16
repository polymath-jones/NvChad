local plugins = {
  {
    "vim-crystal/vim-crystal",
    ft = "crystal",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup {}
    end,
    lazy = false,
  },
  {
    "f-person/git-blame.nvim",
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
    lazy = false,
    enable = true,
  },
  {
    "nvimdev/lspsaga.nvim",
    config = function()
      require("lspsaga").setup {}
    end,
    lazy = false,
  },
  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup()
    end,
    lazy = false,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",

    config = function()
      local null_ls = require "null-ls"

      null_ls.setup {
        sources = {
          -- null_ls.builtins.diagnostics.eslint_d.with {
          --   diagnostics_format = "[eslint] #{m}\n(#{c})",
          -- },
          null_ls.builtins.diagnostics.fish,
          null_ls.builtins.formatting.stylua,
        },
      }
    end,
    lazy = false,
  },
  {
    "MunifTanjim/prettier.nvim",

    config = function()
      require("prettier").setup {
        bin = "prettierd",
        filetypes = {
          "css",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "json",
          "scss",
          "less",
        },
      }
    end,
    lazy = false,
  },
  {
    "Shatur/neovim-session-manager",
    config = function()
      require("session_manager").setup {}
    end,
    lazy = false,
  },
  {
    "pocco81/auto-save.nvim",
    lazy = false,
    enabled = true,
  },
}

return plugins

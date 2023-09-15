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
    "glepnir/lspsaga.nvim",
    config = function()
      require("lspsaga").init_lsp_saga {
        server_filetype_map = {
          typescript = "typescript",
        },
      }
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",

    config = function()
      local null_ls = require "null-ls"

      null_ls.setup {
        sources = {
          null_ls.builtins.diagnostics.eslint_d.with {
            diagnostics_format = "[eslint] #{m}\n(#{c})",
          },
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
}

return plugins

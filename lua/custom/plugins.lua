local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
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
    opts = {
      ensure_installed = {
        "eslint-lsp",
        "prettierd",
        "tailwindcss-language-server",
        "typescript-language-server",
      },
    },
  },
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      local opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
      }
      return opts
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = function()
      require "custom.configs.telescope"
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      require "custom.configs.nvimtree"
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    lazy = false,
    opts = function ()
      return require "custom.configs.copilot"
    end,
    config = function(_, opts)
      require("copilot").setup(opts)
    end
  },
}
return plugins

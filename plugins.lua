local plugins = {
  {
    'ThePrimeagen/harpoon',
    event = "VeryLazy",
    config = function ()
       require "custom.configs.harpoon"
    end
  },
  {
    "tpope/vim-fugitive",
    event = "VeryLazy",
    config = function ()
      require "custom.configs.fugitive"
    end
  },
  {
    "mbbill/undotree",
    event = "VeryLazy",
    config = function ()
      require "custom.configs.undotree" 
    end
  },
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "mhartington/formatter.nvim",
    event = "VeryLazy",
    opts = function ()
        return require "custom.configs.formatter"
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "gopls",
        "yaml-language-server",
        "dockerfile-language-server",
      }
    }
  },
}
return plugins

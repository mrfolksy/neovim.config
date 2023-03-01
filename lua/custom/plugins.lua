return function(use)
  -- Yes I know that this is a depedency for other modules, but making sure
  -- I explicitly add this plugin for Neovim plugin dev as I might drop plugins in the future
  use({
    "nvim-lua/plenary.nvim",
  })

  -- Which-Key cos I can't remember my keymaps, this is a bit
  -- of a cruch for me
  use({
    "folke/which-key.nvim",
  })

  -- File explorer see mappings in ../../after/plugin/defaults.lua
  use({
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  })

  -- Toggleterm55
  use({
    "akinsho/toggleterm.nvim", tag = '*',
  })

  -- using packer.nvim
  use({
    "akinsho/bufferline.nvim",
    tag = "v3.*",
    requires = "nvim-tree/nvim-web-devicons"
  })

  -- Vimspector, Graphical Debugging for the maniac :-D
  -- taken from https://alpha2phi.medium.com/neovim-for-beginners-debugging-using-vimspector-3b6762dbd115
  use({
    "puremourning/vimspector",
    config = function()
      vim.g.vimspector_enable_mappings = 'HUMAN' -- run PackerCompile if you change this
      vim.g.vimspector_bottombar_height = 15
      vim.cmd [[packadd! vimspector]]
    end
  })

  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  use({
    "carlsmedstad/vim-bicep"
  })

  use({
    "rafamadriz/friendly-snippets"
  })

  -- Themes ---------------------------------------
  -- Gruvbox Theme
  use({
    "ellisonleao/gruvbox.nvim"
  })

  -- Rose pine Theme
  use({
    "rose-pine/neovim"
  })

  -- Catppuccin
  use({
    "catppuccin/nvim",
    as = "catppuccin"
  })

  use({
    "bluz71/vim-nightfly-colors"
  })

  use({
    "rafamadriz/neon"
  })

  use({
    "folke/tokyonight.nvim"
  })

  use({
    "glepnir/zephyr-nvim"
  })

  use({
    "yonlu/omni.vim"
  })

  use({
    "rebelot/kanagawa.nvim"
  })
end

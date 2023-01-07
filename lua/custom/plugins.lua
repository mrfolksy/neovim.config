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

  -- using packer.nvim
  use ({
    "akinsho/bufferline.nvim",
    tag = "v3.*",
    requires = "nvim-tree/nvim-web-devicons"
  })

  -- Vimspector, Graphical Debugging for the maniac :-D
  -- taken from https://alpha2phi.medium.com/neovim-for-beginners-debugging-using-vimspector-3b6762dbd115
  use ({
    "puremourning/vimspector",
    config = function ()
      vim.g.vimspector_enable_mappings='HUMAN' -- run PackerCompile if you change this
      vim.cmd [[packadd! vimspector]]
    end
  })

  -- Gruvbox Theme
  use ({
    "ellisonleao/gruvbox.nvim"
  })
end

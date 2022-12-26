return function(use)
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
    setup = function()
      vim.g.vimspector_enable_mappings='HUMAN'
    end,
    config = function ()
      vim.cmd [[packadd! vimspector]]
    end
  })
end

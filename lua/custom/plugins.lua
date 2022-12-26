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
  use({
    "puremourning/vimspector",
    cmd = { "VimspectorInstall", "VimspectorUpdate" },
    fn = { "vimspector#Launch()", "vimspector#ToggleBreakpoint", "vimspector#Continue" },
    config = function()
      require("config.vimspector").setup()
    end,-- Keymaps
  })

end

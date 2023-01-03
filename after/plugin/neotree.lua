local status, neotree = pcall(require, "neo-tree")
if not status then
  return
end

neotree.setup({
  filesystem = {
    hijack_netrw_behavior = "open_default"
  }
})

-- Keymaps
vim.keymap.set('n', '<leader>e','<cmd>Neotree toggle<cr>')

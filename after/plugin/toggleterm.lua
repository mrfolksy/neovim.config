local status, toggleterm = pcall(require, "toggleterm")
if not status then
  return
end

toggleterm.setup {}
-- keymaps
vim.keymap.set('n', '<leader>tf', '<cmd>ToggleTerm direction=float<cr>', { desc = 'Toggle [t]erminal [f]loating window' })
vim.keymap.set('n', '<leader>th', '<cmd>ToggleTerm<cr>', { desc = 'toggle [T]erminal [h]orizontal split' })

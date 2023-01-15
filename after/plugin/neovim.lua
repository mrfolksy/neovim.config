-- Options ----------------------------------------------
-- Folding
vim.opt.foldenable = false
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldmethod = "expr"
vim.opt.foldlevel = 99

-- Keymaps ----------------------------------------------
-- Buffers
vim.keymap.set("n", "<leader>bc", "<cmd>bd<cr>", { desc = "[B]uffer [C]lose" })
vim.keymap.set("n", "<leader>bt", "<cmd>tab split<cr>", { desc = "[B]uffer into new [T]ab" })
vim.keymap.set("n", "<leader>bv", "<cmd>vsplit<cr>", { desc = "[B]uffer [V]ertical Split" })
vim.keymap.set("n", "<leader>bh", "<cmd>split<cr>", { desc = "[B]uffer [H]orizontal Split" })

-- Windows
vim.keymap.set("n", "<leader>wq", "<C-w>q<cr>", { desc = "[W]indow Close" })
vim.keymap.set("n", "<leader>Q", "<cmd>qa<cr>", { desc = "[Q]uit All Windows" })

-- Auto Commands ----------------------------------------
-- Workaround for opening files in Telescope breaking folding
local myFoldHackGroup = vim.api.nvim_create_augroup("MyFoldHackGroup", { clear = true })
vim.api.nvim_create_autocmd("BufRead", {
  pattern = { "*.cs", "*.lua", "*.ts", "*.xml", "*.yaml" },
  callback = function()
    vim.api.nvim_create_autocmd("BufWinEnter", {
      once = true,
      command = "set foldmethod=expr",
    })
  end,
  group = myFoldHackGroup,
})

vim.api.nvim_create_autocmd("BufRead", {
  callback = function()
    vim.api.nvim_create_autocmd("BufWinEnter", {
      once = true,
      command = "normal! zx zR",
    })
  end,
  group = myFoldHackGroup,
})

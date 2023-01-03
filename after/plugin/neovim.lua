-- Buffers
vim.keymap.set("n", "<leader>bc", "<cmd>bd<cr>", { desc = "[B]uffer [C]lose"})
vim.keymap.set("n", "<leader>bt", "<cmd>tab split<cr>", { desc = "[B]uffer into new [T]ab"})
vim.keymap.set("n", "<leader>bv", "<cmd>vsplit<cr>", { desc = "[B]uffer [V]ertical Split"})
vim.keymap.set("n", "<leader>bh", "<cmd>split<cr>", { desc = "[B]uffer [H]orizontal Split"})

-- Windows
vim.keymap.set("n", "<leader>wq", "<C-w>q<cr>", { desc = "[W]indow Close"})

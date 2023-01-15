-- local status, vimspector = pcall(require, "vimspector")
-- if not status then
--   return
-- end
--
-- vimspector.setup {}
vim.keymap.set("n", "<S-F5>", "<cmd>VimspectorReset<cr>", { desc = "<Plug>VimspectorReset" })
vim.keymap.set("n", "<leader>ldi", "<Plug>VimspectorBalloonEval", { desc = "<Plug>VimspectorBalloonEval" })


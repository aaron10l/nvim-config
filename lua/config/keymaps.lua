-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- vim.keymap.set("n", "<Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })

vim.keymap.set("i", "<C-h>", "<Left>", { desc = "Move left in insert mode" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "Move down in insert mode" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "Move up in insert mode" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "Move right in insert mode" })

-- Add keymap for deleting a buffer with <leader>x
vim.keymap.set("n", "<leader>x", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

-- add keymaps for moving left and right in buffers with tab
vim.keymap.set("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" }) -- Move to the next buffer
vim.keymap.set("n", "<S-Tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" }) -- Move to the previous buffer

-- keymap to allow me to open a tmux terminal using leader h
vim.keymap.set("n", "<leader>h", function()
  os.execute("tmux split-window -v")
end, { desc = "Open Horizontal Tmux Pane" })

-- keymap to allow me to open a tmux terminal using leader v
vim.keymap.set("n", "<leader>v", function()
  os.execute("tmux split-window -h")
end, { desc = "Open vertical Tmux Pane" })

-- Overwrite <leader>/ to comment out the current line
vim.keymap.set("n", "<leader>/", "gcc", { desc = "Toggle Comment Line", remap = true })

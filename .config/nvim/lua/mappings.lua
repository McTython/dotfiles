require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<Leader>d", "_dd")

-- Delete a word backwards
map("n", "dw", 'vb"_d')

-- Save file and quit
map("n", "<Leader>w", "<cmd>w<CR>")
map("n", "<leader>cx", function()
  require("nvchad.tabufline").closeAllBufs()
end)
map("n", "<Leader>q", ":quit<Return>Toggle")
map("n", "<Leader>Q", ":qa<Return>")

-- File explorer with NvimTree
map("n", "<Leader>t", ":NvimTreeToggle<Return>")
map("n", "<Leader>e", ":NvimTreeFocus<Return>")

-- Split window
vim.keymap.del("n", "s")
map("n", "ss", "<cmd>:split <CR>")
map("n", "\\", "<cmd>:vsplit <CR>")

map("i", "jj", "<ESC>")

map("n", "<C-]>", function()
  require("nvchad.term").toggle { pos = "vsp", size = 0.4 }
end)
map("n", "<C-\\>", function()
  require("nvchad.term").toggle { pos = "sp", size = 0.4 }
end)
map("n", "<C-f>", function()
  require("nvchad.term").toggle { pos = "float" }
end)
map("n", "<C-]>", function()
  require("nvchad.term").toggle { pos = "vsp" }
end)
map("n", "<C-\\>", function()
  require("nvchad.term").toggle { pos = "sp" }
end)
map("n", "<C-f>", function()
  require("nvchad.term").toggle { pos = "float" }
end)
-- Move window
map("n", "sh", "<C-w>h")
map("n", "sk", "<C-w>k")
map("n", "sj", "<C-w>j")
map("n", "sl", "<C-w>l")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

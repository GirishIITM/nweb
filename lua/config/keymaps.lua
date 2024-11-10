local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G", opts) -- Normal mode select all
keymap.set("i", "<C-a>", "<Esc>gg<S-v>G", opts) -- Insert mode select all (Exits insert mode, selects all, and re-enters insert mode)

-- Cut to system clipboard
keymap.set({ "n", "v" }, "<C-x>", '"+d', opts) -- Normal and visual mode cut
keymap.set("i", "<C-x>", '<Esc>"+di', opts) -- Insert mode cut (cuts the current line)

-- Copy to system clipboard
keymap.set({ "n", "v" }, "<C-S-c>", '"+y', opts) -- Normal and visual mode copy
keymap.set("i", "<C-S-c>", '<Esc>"+yi', opts) -- Insert mode copy (copies the current line)

-- Paste from system clipboard
keymap.set({ "n", "v" }, "<C-S-v>", '"+p', opts) -- Normal and visual mode paste
keymap.set("i", "<C-S-v>", "<C-r>+", opts) -- Insert mode paste

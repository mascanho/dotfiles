-- local discipline = require("craftzdog.discipline")

-- discipline.cowboy()
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function()
	require("craftzdog.utils").replaceHexWithHSL()
end)

-- F# Keys
vim.keymap.set("n", "<F2>", ":tabnew<CR>")
vim.keymap.set("n", "<F12>", ":tabclose<CR>")
vim.keymap.set("n", "<F3>", ":terminal<CR>")
vim.keymap.set("n", "<F5>", ":tabprev<CR>")
vim.keymap.set("n", "<F8>", ":tabnext<CR>")

-- Quit Keys
vim.keymap.set("n", "<C-q>", ":q<CR>")
vim.keymap.set("n", "<C-s>", ":w<CR>")

-- Arena Keys
vim.keymap.set("n", "<F9>", ":ArenaToggle<CR>")

-- Yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y') -- yank motion
vim.keymap.set({ "n", "v" }, "<leader>Y", '"+Y') -- yank line

-- Delete into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", '"+d') -- delete motion

-- Paste from system clipboard
vim.keymap.set("n", "<leader>p", '"+p') -- paste after cursor
vim.keymap.set("n", "<leader>P", '"+P') -- paste before cursor

-- Move lines like VScode
-- vim.keymap.set("n", "<C-[>", ":m .-2<CR>==") -- move line down(n)
-- vim.keymap.set("n", "<C-]>", ":m .+1<CR>==") -- move line up(n)
-- vim.keymap.set("v", "<C-[>", ":m '>+1<CR>gv=gv") -- move line up(v)
-- vim.keymap.set("v", "<C-]>", ":m '<-2<CR>gv=gv") -- move line down(v)

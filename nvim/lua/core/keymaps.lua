vim.g.mapleader = " "

local map = vim.keymap

---------Insert Mode---------
map.set("i", "jj", "<ESC>")

---------Visual Mode---------
-- one or more than one line move
map.set("v", "J", ":m '>+1<CR>gv=gv")
map.set("v", "K", ":m '<-2<CR>gv=gv")

--------Normal Mode----------
--NewWindow
map.set("n", "<leader>sv", "<C-w>v")    --column
map.set("n", "<leader>sh", "<C-w>s")    --raw

--Selecct Highlight
map.set("n", "=", "nzz")    --next
map.set("n", "-", "Nzz")    --previous

--Cancel Highlight
map.set("n", "<leader><CR>", ":nohl<CR>")

--Change To My Key
map.set("n", "J", "5j")
map.set("n", "K", "5k")
--map.set("n", "u", "h")
--map.set("n", "h", "u")

--Quick Save, deleate, etc.
map.set("n", "S", ":w<CR>")     --Quick Save
map.set("n", "Q", ":q<CR>")     --Quick Quit
map.set("n", "R", ":so<CR>")    --Quick Reload

------------Extensions--------------
--NvimTree
map.set("n", "<C-n>", ":NvimTreeToggle<CR>")

--Trans Buffer
map.set("n", "<C-l>l", ":bnext<CR>")
--map.set("n", "<C-H>", ":bprevious<CR>")



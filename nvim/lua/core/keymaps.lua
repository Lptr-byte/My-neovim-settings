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

--Make sure Tab to select
-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

local opts = {silent = true, noremap = true, expr = true, replace_keycodes = false}
map.set("i", "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', opts)
map.set("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

map.set("i", "<cr>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]], opts)

------------Extensions--------------
--NvimTree
map.set("n", "<C-n>", ":NvimTreeToggle<CR>")

--Trans Buffer
map.set("n", "<C-l>l", ":bnext<CR>")
--map.set("n", "<C-H>", ":bprevious<CR>")

--Quick start Markdown Preview
map.set("n", "<leader>1", ":MarkdownPreview<CR>")

local opt = vim.opt

--line number
opt.relativenumber = true
opt.number = true

--set indent
opt.tabstop = 4 
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

--provent wrap
opt.wrap = false

--cursorline
opt.cursorline = true

--systeam clipboard
opt.clipboard:append("unnamedplus")

--default new window locate
opt.splitright = true
opt.splitbelow = true

--search
opt.ignorecase = true
opt.smartcase = true

--outside theme
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme tokyonight-moon]]



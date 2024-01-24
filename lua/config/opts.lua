local opt = vim.opt
local TAB_SPACE_SIZE = 4

opt.number = true
opt.relativenumber = true

opt.splitbelow = true
opt.splitright = true

opt.wrap = false

opt.expandtab = true
opt.tabstop = TAB_SPACE_SIZE
opt.softtabstop = TAB_SPACE_SIZE
opt.shiftwidth = TAB_SPACE_SIZE

opt.smartindent = true

opt.clipboard = "unnamedplus"

opt.scrolloff = 999

opt.virtualedit = "block"

opt.inccommand = "split"

opt.ignorecase = true

opt.termguicolors = true
opt.signcolumn = "auto"
opt.colorcolumn = "160"
opt.cmdheight = 2

opt.updatetime = 100

opt.swapfile = false
opt.undodir = vim.fn.expand("~/.vim/undodir")
opt.undofile = true

local opt = vim.opt

-- Set highlight on search
opt.hlsearch = true

-- Enable mouse mode
opt.mouse = 'a'

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true
opt.swapfile = false
opt.backup = false

-- Case insensitive searching UNLESS /C or capital in search
opt.ignorecase = true
opt.smartcase = true

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.backspace = "indent,eol,start"

opt.cursorline = true

opt.signcolumn = "yes"
opt.colorcolumn = "120"

-- Set colorscheme
opt.termguicolors = true

-- Set completeopt to have a better completion experience
opt.completeopt = "menuone,noselect"
opt.scrolloff = 8

opt.splitright = true
opt.splitbelow = true

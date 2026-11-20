-- Keep editor state separate from the configuration directory.
local state_dir = vim.fn.stdpath("config") .. "/state"
local backup_dir = state_dir .. "/backup"
local swap_dir = state_dir .. "/swap"
local undo_dir = state_dir .. "/undo"

for _, directory in ipairs({ backup_dir, swap_dir, undo_dir }) do
  vim.fn.mkdir(directory, "p")
end

vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")

vim.opt.mouse = "a"
-- OSC 52 integration in clipboard.lua allows copying over SSH.
vim.opt.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.showbreak = "+++"
vim.opt.textwidth = 100
vim.opt.showmatch = true
vim.opt.visualbell = true

vim.opt.hlsearch = true
vim.opt.smartcase = true
vim.opt.ignorecase = true
vim.opt.incsearch = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smarttab = true

vim.opt.ruler = true
vim.opt.undolevels = 1000
vim.opt.undofile = true
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.laststatus = 2
vim.opt.termguicolors = true
vim.opt.updatetime = 4000

vim.opt.backupdir = backup_dir .. "//"
vim.opt.directory = swap_dir .. "//"
vim.opt.undodir = undo_dir
vim.opt.backup = true

vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 999
vim.o.signcolumn = "yes:1"
vim.o.expandtab = true      
vim.o.shiftwidth = 4       
vim.o.tabstop = 4          
vim.o.smartindent = true   
vim.o.termguicolors = true  
vim.o.undofile = true       
vim.o.cursorline = true     
vim.o.timeoutlen = 300     

vim.opt.fillchars = { eob = " " }
vim.opt.ignorecase = true
vim.opt.wrap = false
vim.opt.linebreak = true     
vim.opt.breakindent = true  
vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = ' '

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- File
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
map("n", "<leader>f", "<cmd>Oil<cr>", { desc = "File explorer" })

-- Buffers
map("n", "<leader>m", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>n", "<cmd>bprev<cr>", { desc = "Prev buffer" })
map("n", "<leader>x", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

-- Windows
map("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Vertical split" })
map("n", "<leader>sh", "<cmd>split<cr>", { desc = "Horizontal split" })

-- Clear search highlight
map("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Clear highlights" })

-- Better window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Stay in visual mode when indenting
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move lines up/down
map("n", "<A-j>", "<cmd>m .+1<cr>==", opts)
map("n", "<A-k>", "<cmd>m .-2<cr>==", opts)
map("v", "<A-j>", ":m '>+1<cr>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<cr>gv=gv", opts)

vim.pack.add {
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/stevearc/oil.nvim',
	'https://github.com/rose-pine/neovim.git',
	'https://github.com/nvim-lualine/lualine.nvim',
}

require('lualine').setup({
    options = { theme = 'rose-pine' }
})
require("oil").setup()
vim.cmd.colorscheme('rose-pine')


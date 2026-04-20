vim.o.number = true
vim.o.relativenumber = true
vim.o.scrolloff = 999
vim.o.signcolumn = "yes:1"

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
map("n", "<leader>f", "<cmd>Oi<cr>", { desc = "File explorer" })

-- Buffers
map("n", "<leader>m", "<cmd>bnext<cr>", { desc = "Next buffer" })
map("n", "<leader>n", "<cmd>bprev<cr>", { desc = "Prev buffer" })
map("n", "<leader>x", "<cmd>bdelete<cr>", { desc = "Delete buffer" })

-- Windows
map("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Vertical split" })
map("n", "<leader>sh", "<cmd>split<cr>", { desc = "Horizontal split" })

-- Clear search highlight
map("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Clear highlights" })


vim.pack.add {
	'https://github.com/neovim/nvim-lspconfig',
	'https://github.com/stevearc/oil.nvim',
	'https://github.com/rose-pine/neovim.git',	
}

require("oil").setup()
vim.cmd.colorscheme('rose-pine')


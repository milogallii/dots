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
vim.o.timeoutlen = 250
vim.o.autocomplete = true
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

map("n", "<leader>f", "<cmd>Pick files<cr>", { desc = "file picker" })
map("n", "<leader>b", "<cmd>Pick buffers<cr>", { desc = "buffer picker" })
map("n", "<leader>g", "<cmd>Pick grep live<cr>", { desc = "grep live" })
map("n", "<leader>x", "<cmd>:lua MiniFiles.open()<cr>", { desc = "open file editor" })
map("n", "<leader>z", "<cmd>:lua MiniFiles.close()<cr>", { desc = "close file editor" })

map('n', '<leader>h', '<cmd>nohlsearch<cr>', { desc = 'Clear search highlights' })
map("n", "<leader>t", "<cmd>lua MiniTrailspace.trim() MiniTrailspace.trim_last_lines()<cr>",
    { desc = "Trim whitespaces" })

-- Windows
map("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Vertical split" })
map("n", "<leader>sh", "<cmd>split<cr>", { desc = "Horizontal split" })

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
    'https://github.com/nvim-lua/plenary.nvim',
    'https://github.com/nvim-mini/mini.nvim',
    'https://github.com/neovim/nvim-lspconfig',
    'https://github.com/nvim-treesitter/nvim-treesitter',
    'https://github.com/stevearc/oil.nvim',
    -- 'https://github.com/rose-pine/neovim.git',
    'https://github.com/ellisonleao/gruvbox.nvim.git',
    -- "https://github.com/EdenEast/nightfox.nvim.git",
    "https://github.com/stevearc/conform.nvim",
}

require("conform").setup({
    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
    formatters_by_ft = {
        lua = { "stylua" },
        json = { "jq" },
        rust = { "rustfmt" },
        html = { "djlint" },
    },
})

require("oil").setup()
require('mini.basics').setup()
require('mini.ai').setup()
require('mini.pairs').setup()
require('mini.pairs').setup()
require('mini.completion').setup()
require('mini.operators').setup()
require('mini.surround').setup()
require('mini.git').setup()
require('mini.diff').setup()
require('mini.trailspace').setup()
require('mini.statusline').setup()
require('mini.pick').setup()
require('mini.files').setup()
require('mini.comment').setup({
    mappings = {
        comment_line = '<Space>c',
        comment_visual = '<Space>c',
    },
})

vim.lsp.enable('lua_ls')
vim.lsp.enable('rust-analyzer')
vim.lsp.enable('clangd')
vim.lsp.enable('tombi')
vim.lsp.enable('superhtml')
vim.cmd.colorscheme('gruvbox')

-- NEOVIM BASIC CONFIG

-- mkdir -p ~/.config/nvim
-- nvim ~/.config/nvim/init.lua

-- ################# CONFIG ######################

vim.o.number = true        -- Show line numbers
vim.o.relativenumber = true -- Relative line numbers
vim.o.clipboard = "unnamedplus" -- Use system clipboard
vim.o.expandtab = true      -- Use spaces instead of tabs
vim.o.shiftwidth = 4        -- Set indentation width
vim.o.tabstop = 4           -- Number of spaces per tab
vim.o.smartindent = true    -- Auto-indent new lines

vim.keymap.set('i', 'jk', '<Esc>', { silent = true }) -- jk to Escape

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- require("config.lazy")

-- ################# CONFIG ######################
-- :source ~/.config/nvim/init.lua

vim.g.mapleader = " "

local keymap = vim.keymap

-- 插入模式
-- keymap.set("i", "jk", "<ESC>")

-- 视觉模式
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- 普通模式
-- 窗口
keymap.set("n", "<leader>sv", "<C-w>v") -- 垂直分割
keymap.set("n", "<leader>sh", "<C-w>s") -- 水平分割

-- 取消高亮
keymap.set("n", "<leader>nh", ":noh<CR>")

-- 插件
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- bufferline
keymap.set("n", "<S-l>", ":bnext<CR>")
keymap.set("n", "<S-h>", ":bprevious<CR>")

keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })

keymap.set('n', '<space>rf', ':!ruff format %<CR>')

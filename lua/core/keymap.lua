vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 插入模式 ---------- ---
keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>sv", "<C-W>v")
keymap.set("n", "<leader>sh", "<C-W>s")

-- 添加空白行
keymap.set("n", "<leader>o", "o<ESC>")
keymap.set("n", "<leader>O", "O<ESC>")

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- ---------- 插件 ---------- ---
-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap.set("n", "<leader>c", ":NvimTreeFindFile<CR>")
-- 切换buffer
keymap.set("n", "<C-O>", ":bnext<CR>")
keymap.set("n", "<C-I>", ":bprevious<CR>")
-- 关闭buffer
keymap.set("n", "<C-X>", ":bdelete<CR>")
-- markdown
keymap.set("n","<leader>m", ":MarkdownPreview<CR>")

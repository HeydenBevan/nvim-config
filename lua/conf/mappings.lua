vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move selected blocks up and down, updating the indents as they move
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "H", "^") -- Move to start of line
vim.keymap.set("n", "L", "$") -- Move to end of line

vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Go up a page
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Go down a page

-- Copy to System Clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


-- Don't retain deleted contents in any clipboard
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- Treat Ctrl + C as Esc, because I'm lazy
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")

local os_name = vim.loop.os_uname().sysname
if os_name == "Linux" or os_name == "Darwin" then
	vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
end

vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Q", "q", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
vim.api.nvim_create_user_command("WQ", "wq", {})

vim.keymap.set("n", "<leader>cc", vim.cmd.cclose)

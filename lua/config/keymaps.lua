-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

map("i", "jj", "<Esc>", { noremap = true, silent = true })

-- VSCode keymaps
if vim.g.vscode then
    -- Lazy Git
    map("n", "<leader>gg", function()
        local code = require('vscode')
        code.action('lazygit.openLazygit')
    end, { desc = "Lazy kgit (cwd)" })
    unmap("n", "<leader>gG")
    unmap("n", "<leader>gb")
    unmap("n", "<leader>gB")
    unmap("n", "<leader>gf")
    unmap("n", "<leader>gl")
end

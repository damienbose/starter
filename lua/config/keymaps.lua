-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

-- Primeongen keymap
map("x", "<leader>p", '"_dP', { desc = "Do not cut on paste" })
map({ "n", "v" }, "<leader>d", '"_d', { desc = "Do not cut on delete" })
map({ "n", "v" }, "<leader>D", '"_D', { desc = "Do not cut on delete" })

-- Copy to system clipboard
map({ 'v', 'n' }, '<leader>y', '"+y', opts) -- Copy selected text in visual mode to clipboard
map('n', '<leader>Y', '"+y$', opts)         -- Copy to the end of the line to clipboard in normal mode
map('n', '<leader>yy', '"+yy', opts)        -- Copy the current line to clipboard

-- Paste from system clipboard
map('n', '<leader>p', '"+p', opts) -- Paste clipboard content after the cursor
map('n', '<leader>P', '"+P', opts) -- Paste clipboard content before the cursor
map('v', '<leader>p', '"+p', opts) -- Paste clipboard content in visual mode

-- VSCode keymaps
if vim.g.vscode then
    -- VSCode actions
    map("n", "<leader>cr", function()
        local code = require('vscode')
        code.action('editor.action.rename')
    end, { desc = "Rename Symbol" })

    -- Lazy Git
    map("n", "<leader>g", function()
        local code = require('vscode')
        code.action('lazygit-vscode.toggle')
    end, { desc = "Lazy git (cwd)" })
    unmap("n", "<leader>gg")
    unmap("n", "<leader>gG")
    unmap("n", "<leader>gb")
    unmap("n", "<leader>gB")
    unmap("n", "<leader>gf")
    unmap("n", "<leader>gl")
end

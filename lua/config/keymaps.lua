-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

map("i", "jk", "<Esc>", { noremap = true, silent = true })

-- VSCode keymaps
if vim.g.vscode then
    -- VSCode actions
    map("n", "<leader>cr", function()
        local code = require('vscode')
        code.action('editor.action.rename')
    end, { desc = "Rename Symbol" })

    -- Harpoon
    map("n", "<leader>H", function()
        local code = require('vscode')
        code.action('vscode-harpoon.addEditor')
    end, { desc = "Harpoon Add" })

    map("n", "<leader>h", function()
        local code = require('vscode')
        code.action('vscode-harpoon.editEditors')
    end, { desc = "Harpoon Add" })

    map("n", "<leader>1", function()
        local code = require('vscode')
        code.action('vscode-harpoon.gotoEditor1')
    end, { desc = "Harpoon Editor 1" })
    map("n", "<leader>2", function()
        local code = require('vscode')
        code.action('vscode-harpoon.gotoEditor2')
    end, { desc = "Harpoon Editor 2" })
    map("n", "<leader>3", function()
        local code = require('vscode')
        code.action('vscode-harpoon.gotoEditor3')
    end, { desc = "Harpoon Editor 3" })
    map("n", "<leader>4", function()
        local code = require('vscode')
        code.action('vscode-harpoon.gotoEditor4')
    end, { desc = "Harpoon Editor 4" })
    map("n", "<leader>5", function()
        local code = require('vscode')
        code.action('vscode-harpoon.gotoEditor5')
    end, { desc = "Harpoon Editor 5" })


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

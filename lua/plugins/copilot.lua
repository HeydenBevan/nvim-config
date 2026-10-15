return {
    "github/copilot.vim",
    config = function()
        vim.g.copilot_enabled = false -- Copilot is off by default

        -- Enable Copilot on a keybind
        vim.g.copilot_toggled = false
        vim.keymap.set("n", "<leader>cos", ":Copilot status<CR>", { noremap = true, silent = true })
        vim.keymap.set("n", "<leader>tc", function()
            if vim.g.copilot_toggled then
                vim.g.copilot_toggled = false
                vim.cmd("Copilot disable")
                print("Copilot disabled")
            else
                vim.g.copilot_toggled = true
                vim.cmd("Copilot enable")
                print("Copilot enabled")
            end
        end)

        -- Use Ctrl + \ to accept Copilot suggestions to avoid accidents on Tab
        vim.keymap.set("i", "<C-\\>", 'copilot#Accept("")', {
            expr = true,
            replace_keycodes = false
        })
        vim.g.copilot_no_tab_map = true
    end
}

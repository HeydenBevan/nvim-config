return {
    {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>gs", "<Cmd>tab Git<CR>")

            vim.keymap.set("n", "<leader>gh", function()
                vim.cmd("GBrowse")
            end)
        end
    }
}


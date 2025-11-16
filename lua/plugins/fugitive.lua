return {
    {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>gs", "<Cmd>tab Git<CR>")
        end
    }
}


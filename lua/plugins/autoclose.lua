return {
    {
        "m4xshen/autoclose.nvim",
        config = function()
            require("autoclose").setup({
                options = {
                    disable_filetypes = { "text" }
                }
            })
        end
    }
}


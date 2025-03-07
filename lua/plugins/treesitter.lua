return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        commit = "49f1b9a",
        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = {
                    "bash",
                    "c_sharp",
                    "dockerfile",
                    "elixir",
                    "git_config",
                    "go",
                    "html",
                    "javascript",
                    "json",
                    "lua",
                    "markdown",
                    "ruby",
                    "sql",
                    "typescript",
                    "xml",
                    "yaml",
                },

                sync_install = false,

                -- Automagically install missing parsers
                auto_install = true,

                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
            }
        end
    },
}

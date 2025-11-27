return {
    -- LSP Package Manager
    {
        "mason-org/mason.nvim",
        opts = {},
        config = function()
            require("mason").setup()
        end
    },

    -- Enable LSPs and set LSP command keymaps
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig"
        },
        config = function()
            require("mason-lspconfig").setup()

            -- LSP Mappings
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "LSP: Go to definition" })
            vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "LSP: Go to implementation" })
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP: Hover help" })
            vim.keymap.set("n", "Q", function() vim.diagnostic.open_float() end)
            vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, { desc = "LSP: View Workspace Symbol" })
            vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_load() end, { desc = "LSP: Open Load" })
            vim.keymap.set("n", "]d", function() vim.diagnostic.jump({count=1, float=true}) end, { desc = "LSP: Next diagnostic" })
            vim.keymap.set("n", "[d", function() vim.diagnostic.jump({count=-1, float=true}) end, { desc = "LSP: Previous diagnostic" })
            vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, { desc = "LSP: View Code Action" })
            vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, { desc = "LSP: View References" })
            vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, { desc = "LSP: Rename symbol" })
            vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, { desc = "LSP: View Signature" })
            vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "LSP: Format document" })
        end
    },

    -- Autocompletion
    {
        "hrsh7th/nvim-cmp",
        event = "InsertEnter",
        dependencies = {
            { "L3MON4D3/LuaSnip" },
            { "hrsh7th/cmp-nvim-lsp" }
        },
        config = function()
            local cmp = require("cmp")
            local luasnip = require("luasnip")

            -- TODO: Consider taking the lsp_zero formatting func
            -- https://github.com/VonHeikemen/lsp-zero.nvim/blob/v4.x/lua/lsp-zero/cmp.lua#L15
            -- TODO: Consider moving the mapping table to another lua script
            cmp.setup({
                sources = {{name="nvim_lsp"}},
                mapping = {
                    ["<Down>"] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Select}),
                    ["<Up>"] = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Select}),
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            local entry = cmp.get_selected_entry()
                            if not entry then
                                cmp.select_next_item({behavior = cmp.SelectBehavior.Select})
                            end

                            cmp.confirm()
                        else
                            fallback()
                        end
                    end, {"i","s"}),
                    ["<C-n>"] = {
                        i = function()
                            local cmp = require("cmp")
                            if cmp.visible() then
                                cmp.select_next_item({behavior = cmp.SelectBehavior.Select})
                            else
                                cmp.complete()
                            end
                        end,
                    },
                    ["<C-p>"] = {
                        i = function()
                            local cmp = require("cmp")
                            if cmp.visible() then
                                cmp.select_prev_item({behavior = cmp.SelectBehavior.Select})
                            else
                                cmp.complete()
                            end
                        end,
                    },
                    ["<C-e>"] = cmp.mapping.abort(),
                    ["<C-Space>"] = cmp.mapping.complete(),
                    ["<C-f"] = cmp.mapping(function(fallback)
                        if luasnip.locally_jumpable(1) then
                            luasnip.jump(1)
                        else
                            fallback()
                        end
                    end, {"i","s"}),
                    ["<C-b>"] = cmp.mapping(function(fallback)
                        if luasnip.locally_jumpable(-1) then
                            luasnip.jump(-1)
                        else
                            fallback()
                        end
                    end, {"i","s"}),
                    ["<C-u>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-d>"] = cmp.mapping.scroll_docs(4)
                }
            })
        end
    }
}


return {
    {
        "ThePrimeagen/harpoon",
        config = function()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")

            vim.keymap.set("n", "<leader>a", function(args)
                mark.add_file(args)
                local bufname = vim.api.nvim_buf_get_name(0)
                local filename = vim.fn.fnamemodify(bufname, ':t')

                print("Impaled: " .. filename)
            end)
            vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

            vim.keymap.set("n", "<A-1>", function() ui.nav_file(1) end)
            vim.keymap.set("n", "<A-2>", function() ui.nav_file(2) end)
            vim.keymap.set("n", "<A-3>", function() ui.nav_file(3) end)
            vim.keymap.set("n", "<A-4>", function() ui.nav_file(4) end)

            vim.keymap.set("n", "<A-d>", function() ui.nav_next() end)
            vim.keymap.set("n", "<A-a>", function() ui.nav_prev() end)
        end
    }
}


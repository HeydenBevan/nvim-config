local function run_command()
    local input = vim.fn.input("Run command: ")

    vim.cmd("tab term " .. input)
end

vim.keymap.set("n", "<leader>tt", run_command, {
    desc = "Run terminal command in new Vim Tab",
    silent =  true,
})

local function show_help()
    local input = vim.fn.input("Show Vim Help: ")

    vim.cmd("tab help " .. input)
end

vim.keymap.set("n", "<leader>th", show_help, {
    desc = "Show Vim Help in new Tab",
    silent = true,
})

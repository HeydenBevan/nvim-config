local function open_in_vscode()
    vim.cmd("tab term code %:p")
end

vim.keymap.set("n", "<leader>vsc", open_in_vscode, {
    desc = "Open current file in VS Code",
    silent =  true,
})

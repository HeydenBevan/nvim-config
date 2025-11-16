-- I use Treesitter for syntax highlighting which has it's own method of
-- determining indent characters which conflicts with the "native" method in
-- Vim.
--
-- This removes the period `.` character as an indent key to avoid having to
-- manually re-indent the line every time I call a method

vim.cmd('autocmd FileType ruby setlocal indentkeys-=.')

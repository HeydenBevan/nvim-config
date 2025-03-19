-- Currently I use treesitter to indent my text. However when using the period
-- nvim-treesitter will break my indentation of the current line, leading me to
-- manually fixing each time I use the period/dot character.
--
-- This is a band-aid to removing the `.` char as an indent key
vim.cmd('autocmd FileType ruby setlocal indentkeys-=.')

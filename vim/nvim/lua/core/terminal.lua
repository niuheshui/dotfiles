local api = vim.api

api.nvim_command("autocmd TermOpen * startinsert")             -- starts in insert mode
api.nvim_command("autocmd TermOpen * setlocal nonumber")       -- no numbers
api.nvim_command("autocmd TermEnter * setlocal signcolumn=no") -- no sign column
api.nvim_command("autocmd TermEnter * setlocal norelativenumber") -- no relativenumber 

vim.keymap.set('t', '<ESC>', "<C-\\><C-n>")                    -- esc to exit insert mode

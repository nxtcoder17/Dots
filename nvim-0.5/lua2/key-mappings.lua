-- Thanks to Rhisabh Dwivedi [URL]: https://github.com/RishabhRD/archrice/blob/master/.config/nvim/lua/mappings.lua

local function nmap(command, value, expr)
    vim.fn.nvim_set_keymap('n',command,value,{noremap = true, silent = true, expr = expr})
end

local function imap(command, value, expr)
    vim.fn.nvim_set_keymap('i',command,value,{noremap = true, silent = true, expr = expr})
end

local function vmap(command, value, expr)
    vim.fn.nvim_set_keymap('v',command,value,{noremap = true, silent = true, expr = expr})
end

local function tmap(command, value, expr)
    vim.fn.nvim_set_keymap('t',command,value,{noremap = true, silent = true, expr = expr})
end


-- The must have
nmap('Q', '<nop>')

-- Making my vim-flow against the `s` key
nmap('s', '<nop>')
nmap('ss', ':w<CR>')
nmap('sd', ':bd<CR>')
nmap('sl', '<C-w>l')
nmap('sh', '<C-w>h')
nmap('sj', '<C-w>j')
nmap('sk', '<C-w>k')
nmap('si', ':vsplit<CR>')
nmap('sm', ':split<CR>')
nmap('sf', ':Telescope find_files<CR>')

-- Vim Tmux Navigator

nmap('<M-h>', ':TmuxNavigateLeft<cr>')
nmap('<M-j>', ':TmuxNavigateDown<cr>')
nmap('<M-k>', ':TmuxNavigateUp<cr>')
nmap('<M-l>', ':TmuxNavigateRight<cr>')
nmap(';', ':')

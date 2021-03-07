-- Vim Plugin Manager

vim.cmd 'packadd paq-nvim'
local paq = require('paq-nvim').paq

-- paq-nvim should manage itself
-- Let Paq manage itself
paq{'savq/paq-nvim', opt=true}
paq 'neovim/nvim-lspconfig'
paq 'nvim-lua/completion-nvim'
paq 'nvim-lua/lsp_extensions.nvim'

-- Treesitter
paq 'nvim-treesitter/nvim-treesitter'

--
-- Vim Tmux Navigatos
paq 'christoomey/vim-tmux-navigator'
paq 'sainnhe/gruvbox-material'

-- Telescope
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'

paq 'frazrepo/vim-rainbow'
paq {'mg979/vim-visual-multi', branch='master'}

-- Vim Surround
paq 'tpope/vim-surround'


local ts = require 'nvim-treesitter.configs'
ts.setup {ensure_installed = 'maintained', highlight = {enable = true}}

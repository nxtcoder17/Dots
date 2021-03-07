local function set(key, value)
    if value == true or value == nil then
        vim.cmd(string.format('set %s', key))
    else
        vim.cmd(string.format("set %s=%s", key, value))
    end
end

-- Switching between Buffers without saving each of them
set 'hidden'

-- Customising filling characters for vertical split, folding, and diff
set('fillchars', 'vert:▞,fold:,diff:')

-- #N lines to keep while scrolling the pages
set('scrolloff', 10)

-- FileEncodings to have \n
set('fileformat', 'unix')

-- Backspacing over everything
set('backspace', 'indent,eol,start')

-- Persistent Undo
set('undodir', '~/.cache/nvim/undodir')
set('undofile')

-- Smart Switching b/w buffers
set ('switchbuf', 'usetab,newtab')

-- Fast scrolling
set 'ttyfast'
set 'lazyredraw'

-- Makes wild menu options, have some transparency
set('wildoptions', 'pum')
set('pumblend', 17)

-- Autowrap
set 'wrap'

-- Disabling CompleteOpt to auto-insert the first one
set ('completeopt', 'menuone,noinsert,noselect')

-- Always split on the Right
set 'splitright'

-- and at Bottom
set 'splitbelow'

set 'termguicolors'                           -- Terminal colors on asteroids
vim.cmd("colorscheme gruvbox-material")       -- Gruvbox


-- Fold Methods and Markers⠀⠀
set('foldmethod', 'marker')
set('foldmarker', '⠀⠀,⠀⠀')
--⠀⠀

set('guifont', '"Fira Code NerdFont"')
-- set('guifontwide', 'Fira Code NerdFont')

-- Tabs and Spaces⠀⠀
	-- [description]: At BEG of line, TAB inserts Shiftwidth spaces and backspaces clears it
set 'expandtab'

-- AutoIndent and Smart Indent
set 'autoindent'
set 'smartindent'

set 'number'

-- Copy Previous Indentation on Auto Indent
set 'copyindent'
set 'smarttab'

--  Here, Tab means #N spaces
set ('tabstop', 2)

-- Pressing TAB key results in #N spaces
set ('softtabstop', 2)

-- Setting # spaces for indenting
set ('shiftwidth', 2)

set ('background', 'dark')

--⠀⠀

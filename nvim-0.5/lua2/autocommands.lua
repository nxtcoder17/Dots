
-- Vim AutoCommands

local cmd = vim.cmd

cmd [[augroup nxtcoder17]]
  cmd [[autocmd!]]
  cmd [[autocmd BufWritePost *.lua silent! :luafile %]]
  cmd [[ autocmd BufEnter * lua require'completion'.on_attach() ]]

  -- Restore Folds
  cmd [[ autocmd! BufWinEnter <buffer> silent! loadview ]]
  cmd [[ autocmd! BufWinLeave <buffer> silent! mkview ]]
cmd [[augroup end]]


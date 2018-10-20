
"================[ Communicate with tmux ]===================
function! Exe_Java()
    execute 'VimuxRunCommand("clear;javac -d Class_Files/ ".bufname("%"). ";java -classpath Class_Files/ ".expand("%:r"))'
endfunction

function! Exe_Python()
    execute 'VimuxRunCommand("clear;python ".expand("%"))'
endfunction
"================[ Communicate with tmux ]===================

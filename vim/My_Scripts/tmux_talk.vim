 
" We create a command Silent that will help redraw the Vim Screen just after executing a shell command
command! -nargs=1 Silent
\   execute 'silent !' . <q-args>
\ | execute 'redraw!'

function! Execute_Python()
    let process = '" clear; python % "'
	execute 'Silent tmux send-keys -t 2 ' .expand(process). ' Enter '
    "execute 'Silent tmux send-keys -t 2 '. command . ' Enter'
"clear; python %" Enter'
endfunction

function! Execute_Java()
	let CLASS = '/home/balor/Workspace/Java/Vim/Class_Files '
	let temp = ' clear; javac -d '. expand(CLASS). expand('%'). '; java -cp '. expand(CLASS) .expand('%:r')"
	execute 'Silent tmux send-keys -t 2 "'. expand(temp) .'" Enter '
endfunction

function! Execute_Cpp()
	let process = ' " clear; g++ % -o sol; ./sol" '
	" execute 'Silent tmux send-keys -t 2 ' .expand(process). 'Enter'
	execute 'Silent tmux send-keys -t 2 ' .expand(process)
endfunction

function! Execute_C()
	let process = ' " clear; gcc %; ./a.out" '
	execute 'Silent tmux send-keys -t 2 ' .expand(process). 'Enter'
endfunction

function! MarkDown_Preview()
    execute 'Silent markdown '. expand('%'). ' > temp.html && qutebrowser --target tab temp.html'
endfunction

function! Generate_HTML() 
    execute 'Silent markdown '. expand('%'). ' > temp.html'
endfunction

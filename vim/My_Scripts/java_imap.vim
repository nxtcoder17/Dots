
"================[ Java Specific Insert-Mode Mappings ]==========================

" Class Header
imap <expr> #c "class ". expand("%:t:r") . " {<CR><CR>}<ESC>ki<TAB>"

" main () declaration skeleton
imap pum public static void main(String [] args) {<CR><CR>}<ESC>ki<TAB><TAB>

" System.out.println();
imap sout System.out.println("");<C-O>2h

" Scanner input = new Scanner(System.in);
imap inpsc Scanner input = new Scanner(System.in);<CR>

" [ Data Types ]
iabbrev dou double
iabbrev str String 

"[ Import ]
imap ims import java.util.Scanner;<CR><CR>

" [ JavaFX ]
function! ImportThings()
    execute 'normal!Iimport javafx.application.Application;'
    execute 'normal!oimport javafx.stage.Stage;'
    execute 'normal!oimport javafx.scene.Scene;'
    execute 'normal!oimport javafx.scene.layout.*;'
    execute 'normal!oimport javafx.scene.control.*;'
    execute 'normal!oimport javafx.event.EventHandler;'
    execute 'normal!oimport javafx.event.ActionEvent;'
    execute 'normal!oimport javafx.scene.image.Image;'
    execute 'normal!oimport javafx.scene.image.ImageView;'
endfunction

imap #fx <C-O>:call ImportThings()<CR>
"================[ End : Java Mppings ]=======================

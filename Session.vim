let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/workspace/dev/madhouselabs/madhouse/api
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +12 src/modules/locations/services/index.js
badd +0 src/modules/mad-apps/models/apps-elastic-schema.js
badd +5 src/modules/locations/models/location-elastic-schema.js
badd +25 src/modules/locations/models/location-mongoose-schema.js
badd +3 src/modules/locations/router/index.js
badd +1 src/modules/lib-elastic/index.js
badd +1 config.js
badd +4 src/logger/index.js
badd +46 ~/builds/Dots/nvim/init.vim
badd +0 ~/builds/Dots/nvim/scripts/keymaps.vim
argglobal
%argdel
set stal=2
edit src/modules/locations/models/location-mongoose-schema.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 27 + 28) / 57)
exe 'vert 1resize ' . ((&columns * 82 + 123) / 247)
exe '2resize ' . ((&lines * 27 + 28) / 57)
exe 'vert 2resize ' . ((&columns * 82 + 123) / 247)
exe 'vert 3resize ' . ((&columns * 82 + 123) / 247)
exe 'vert 4resize ' . ((&columns * 81 + 123) / 247)
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/workspace/dev/madhouselabs/madhouse/api
wincmd w
argglobal
if bufexists("~/workspace/dev/madhouselabs/madhouse/api/src/modules/locations/models/location-elastic-schema.js") | buffer ~/workspace/dev/madhouselabs/madhouse/api/src/modules/locations/models/location-elastic-schema.js | else | edit ~/workspace/dev/madhouselabs/madhouse/api/src/modules/locations/models/location-elastic-schema.js | endif
if &buftype ==# 'terminal'
  silent file ~/workspace/dev/madhouselabs/madhouse/api/src/modules/locations/models/location-elastic-schema.js
endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 17 - ((16 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 07|
lcd ~/workspace/dev/madhouselabs/madhouse/api
wincmd w
argglobal
if bufexists("~/workspace/dev/madhouselabs/madhouse/api/src/modules/locations/services/index.js") | buffer ~/workspace/dev/madhouselabs/madhouse/api/src/modules/locations/services/index.js | else | edit ~/workspace/dev/madhouselabs/madhouse/api/src/modules/locations/services/index.js | endif
if &buftype ==# 'terminal'
  silent file ~/workspace/dev/madhouselabs/madhouse/api/src/modules/locations/services/index.js
endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 33 - ((32 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 028|
lcd ~/workspace/dev/madhouselabs/madhouse/api
wincmd w
argglobal
if bufexists("~/workspace/dev/madhouselabs/madhouse/api/src/modules/locations/router/index.js") | buffer ~/workspace/dev/madhouselabs/madhouse/api/src/modules/locations/router/index.js | else | edit ~/workspace/dev/madhouselabs/madhouse/api/src/modules/locations/router/index.js | endif
if &buftype ==# 'terminal'
  silent file ~/workspace/dev/madhouselabs/madhouse/api/src/modules/locations/router/index.js
endif
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 17 - ((16 * winheight(0) + 27) / 55)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
17
normal! 031|
lcd ~/workspace/dev/madhouselabs/madhouse/api
wincmd w
exe '1resize ' . ((&lines * 27 + 28) / 57)
exe 'vert 1resize ' . ((&columns * 82 + 123) / 247)
exe '2resize ' . ((&lines * 27 + 28) / 57)
exe 'vert 2resize ' . ((&columns * 82 + 123) / 247)
exe 'vert 3resize ' . ((&columns * 82 + 123) / 247)
exe 'vert 4resize ' . ((&columns * 81 + 123) / 247)
tabedit ~/builds/Dots/nvim/scripts/keymaps.vim
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=marker
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 52 - ((21 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
52
normal! 0
lcd ~/builds/Dots
tabnext 2
set stal=1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFc
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

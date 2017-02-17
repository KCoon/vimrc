let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd D:\GitHub\NcPyPP\src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 D:\GitHub\NcPyPP\src\ncpypp.py
badd +20 D:\GitHub\vimrc\README.md
badd +29 D:\GitHub\NcPyPP\src\ncpypp\parameter.py
badd +1 D:\GitHub\NcPyPP\src\Pyppfile
badd +1 D:\GitHub\NcPyPP\src\ncpypp\languages\iso\iso.py
badd +1 D:\GitHub\NcPyPP\src\ncpypp\languages\iso\mitsubishi\mitsubishi.py
badd +1 D:\GitHub\NcPyPP\src\ncpypp\languages\iso\mitsubishi\m700.py
argglobal
silent! argdel *
argadd ncpypp\languages\iso\mitsubishi\m700.py
set stal=2
edit D:\GitHub\NcPyPP\src\ncpypp.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 137 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 136 + 137) / 274)
argglobal
let s:l = 45 - ((44 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
45
normal! 033|
wincmd w
argglobal
edit D:\GitHub\NcPyPP\src\Pyppfile
let s:l = 1 - ((0 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 137 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 136 + 137) / 274)
tabedit D:\GitHub\NcPyPP\src\ncpypp\parameter.py
set splitbelow splitright
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
argglobal
let s:l = 23 - ((17 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
23
normal! 035|
tabedit D:\GitHub\NcPyPP\src\ncpypp\languages\iso\iso.py
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 90 + 137) / 274)
exe 'vert 3resize ' . ((&columns * 91 + 137) / 274)
argglobal
let s:l = 1 - ((0 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit D:\GitHub\NcPyPP\src\ncpypp\languages\iso\mitsubishi\mitsubishi.py
let s:l = 1 - ((0 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
edit D:\GitHub\NcPyPP\src\ncpypp\languages\iso\mitsubishi\m700.py
let s:l = 10 - ((9 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 91 + 137) / 274)
exe 'vert 2resize ' . ((&columns * 90 + 137) / 274)
exe 'vert 3resize ' . ((&columns * 91 + 137) / 274)
tabnext 1
set stal=1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :

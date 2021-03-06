set encoding=utf-8

augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

"Vundle
set nocompatible        " be improved, required for vundle
filetype off            " required for vundle
if has('win32')
  set rtp+=$HOME/vimfiles/bundle/Vundle.vim
  call vundle#begin('$HOME/vimfiles/bundle/')
else
  set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
endif

Plugin 'VundleVim/Vundle.vim'
Plugin 'Blevs/vim-dzo'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-commentary'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'airblade/vim-gitgutter'
call vundle#end()            " required
filetype plugin indent on    " required
"/Vundle


" Airline
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
set laststatus=2
set noshowmode
" /Airline

"Ultisnips
"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsSnippetDirectories=["UltiSnips", "custom_snippets"]
let g:UltiSnipsEditSplit='vertical'
let g:UltiSnipsExpandTrigger='<Tab>'
let g:UltiSnipsJumpForwardTrigger='<RIGHT>'
let g:UltiSnipsJumpBackwardTrigger='<LEFT>'
"/Ultisnips

"Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"/Syntastic

"YouCompleteMe
"let g:ycm_key_list_previous_completion=['<Up>']
"let g:ycm_key_list_select_completion=['<Down>']
"let g:enable_ycm_at_startup = 1
"let g:ycm_add_preview_to_completeopt = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycs_seed_identifiers_with_syntax = 1
"if has('win32')
"  let g:ycm_python_binary_path = 'C:\python36\python.exe'
"else
"  let g:ycm_python_binary_path = '/usr/bin/python3'
"endif
"if has('win32')
"  let g:ycm_global_ycm_extra_conf = '~\vimfiles\.ycm_extra_conf.py'
"else
"  let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"endif
""let g:syntastic_cpp_compiler = 'clang++'
""let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
"autocmd BufNewFile, BufRead *.cc setfiletype cpp
""/YouCompleteMe

set number
set autochdir
set ic
set backspace=2
set background=dark
set listchars=eol:⏎,tab:>-,space:.
let mapleader = "\\"
set mouse=a
set autoread
set spelllang=en_gb
set ssop-=options    " do not store global and local values in a session
set ssop-=folds      " do not store folds

"Tabs default
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
autocmd FileType c,cpp,python :set expandtab
"/Tabs default

"Tabs Python
autocmd FileType python :set tabstop=4
autocmd FileType python :set softtabstop=4
autocmd FileType python :set shiftwidth=4

"Colour
if has('gui_running')
  colorscheme dzo
else
  colorscheme elflord
endif
"/Colour


syntax on
set foldmethod=syntax
autocmd BufNewFile,BufRead *.py set foldmethod=indent
set foldlevel=2
set hlsearch
set ignorecase
set smartcase
set autoindent
set ruler
set splitright
hi clear SpellBad
hi clear SpellCap
hi clear SpellLocal
hi clear SpellRare
hi SpellBad gui=undercurl guisp=red
hi SpellCap gui=undercurl guisp=green
hi SpellLocal gui=undercurl guisp=violet
hi SpellLocal gui=undercurl guisp=violet

"toolbar
set guioptions-=T
"menu
set guioptions-=m
"scrollbar right
set guioptions-=r
"scrollbar left
set guioptions-=L

"font
if has('win32')
  set guifont=Monaco\ for\ Powerline:h11
  set renderoptions=type:directx,renmode:5
else
  set guifont=Monaco\ for\ Powerline\ 10
endif
"/font

"Commands
command! -nargs=0 -range=% Number <line1>,<line2>s/^/\=printf('%0d ', line('.') - <line1>+1)
command! -nargs=1 -range=% Numberf <line1>,<line2>s/^/\=printf(<args>, line('.') - <line1>+1)
command! -nargs=0 -range=% Nonumber <line1>,<line2>s/^\s*\d*\s*/
if has('win32')
    command! Explorer !start explorer /select,%:p
endif
"/Commands

"Auto commands
"remove trailing white s paces
autocmd FileType c,cpp,python,markdown autocmd BufWritePre <buffer> %s/\s\+$//e
"load anaconda environment for python
if has('gui_running')
	autocmd FileType python let $PATH = '/home/sven/anaconda3/bin:'.$PATH
	autocmd BufRead makefile let $PATH = '/home/sven/anaconda3/bin:'.$PATH
endif
autocmd BufEnter * silent! lcd %:p:h
"Auto commands

"Shortcuts
autocmd FileType python,cpp nnoremap <F2> :cd ../docu \| !doxygen \| cd ../src<CR>
autocmd FileType python,cpp nnoremap <F3> :!xdg-open ../docu/html/index.html<CR>
if has('win32')
  autocmd FileType python nnoremap <F4> :w \| !C:\Python27\python.exe %<CR>
  autocmd FileType python inoremap <F4> <ESC>:w \| !C:\Python27\python.exe %<CR>
  autocmd FileType python nnoremap <F5> :w \| !python %<CR>
  autocmd FileType python inoremap <F5> <ESC>:w \| !python %<CR>
  autocmd FileType python nnoremap <F6> :w \| !ipython %<CR>
  autocmd FileType python inoremap <F6> <ESC>:w \| !ipython %<CR>
else
  autocmd FileType python nnoremap <F5> :w \| !~/anaconda3/bin/python %<CR>
  autocmd FileType python inoremap <F5> <ESC>:w \| !~/anaconda3/bin/python %<CR>
endif
nnoremap <F9> :YcmCompleter GetDoc<CR>
autocmd FileType python nnoremap <F12> :w \| silent !python -m autopep8 -i %<CR>
autocmd FileType python nnoremap <S-F12> :w \| !python -m autopep8 -d %<CR>
"Latex
autocmd FileType tex nnoremap <F5> :w \| !latexmk -xelatex %<CR>
autocmd FileType tex nnoremap <F3> :w \| !latexmk -xelatex -pv %<CR>
"/Shortcuts

"Snippets
	autocmd BufNewFile *.py 0r ~/.vim/templates/skeleton.py
"/Snippets

"          _
"   __   _(_)_ __ ___  _ __ ___
"   \ \ / / | '_ ` _ \| '__/ __|
"  _ \ V /| | | | | | | | | (__
" (_) \_/ |_|_| |_| |_|_|  \___|

" Leader Key
let mapleader=" "

" Cursor
let &t_SI="\<esc>[2 q"
let &t_SR="\<esc>[4 q"
let &t_EI="\<esc>[2 q"

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'ap/vim-css-color'
"Plug 'Valloric/YouCompleteMe'
call plug#end()

" Basic
syntax on
syntax enable
filetype plugin indent on
set nocompatible
set number relativenumber
set updatetime=200
set viminfo+=n~/.vim/viminfo
" Indent & Linebreak
set smartindent linebreak
" Fold
set foldmethod=manual
" Highlight
set hlsearch smartcase ignorecase
hi QuickFixLine cterm=None
hi Search ctermbg=242
hi SpellBad ctermbg=124
hi Folded ctermbg=None
hi FoldColumn ctermbg=None
hi SignColumn ctermbg=None
hi ExtraWhitespace ctermbg=red
" Set Tab to 2 spaces
set tabstop=2 shiftwidth=2 expandtab
" Split
set splitbelow splitright
set fillchars+=vert:\ 
" Wildmenu and Finder
set path+=**
set wildmenu wildignorecase
set wildignore+=/usr/include/**,**/node_modules/**,**/__pycache__/**,**/.git/**
" Disable comment continuation
au BufNewFile,BufRead * set formatoptions-=cro
" Set markdown syntax for my memo
au BufNewFile,BufRead memo-* set ft=markdown
" Show trailing space
match ExtraWhitespace / \+$/

" Plug setting
" netrw
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 15
let g:netrw_list_hide = netrw_gitignore#Hide()
let g:netrw_list_hide .= ',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_hide = 0
" ale
let g:ale_linters = { 'python': ['flake8'],
                    \ 'c': ['gcc'] }
let g:ale_linters_explicit = 1
" vim-closetag
let g:closetag_filenames = "*.html,*.jsx"
" Git Gutter
hi GitGutterAdd ctermbg=None
hi GitGutterChange ctermbg=None
hi GitGutterDelete ctermbg=None
hi GitGutterChangeDelete ctermbg=None

" Function
" Zoom
function! s:ZoomToggle() abort
  if exists('t:zoomed') && t:zoomed
    execute t:zoom_winrestcmd
    let t:zoomed = 0
  else
    let t:zoom_winrestcmd = winrestcmd()
    resize
    vertical resize
    let t:zoomed = 1
  endif
endfunction
command! ZoomToggle call s:ZoomToggle()
" Location List
function! LocalListToggle() abort
  if get(getloclist(0, {'winid':0}), 'winid', 0)
    lclose
    let t:locallist = 0
  else
    lopen
    wincmd k
    let t:locallist = 1
  endif
endfunction
command! LocalListToggle call LocalListToggle()

" Key mapping
noremap <silent> <F1> :silent! setlocal spell! spelllang=en_uk<CR>
set pastetoggle=<F2>
nnoremap <silent> K :silent! nohls<CR>
" Tabs
nnoremap <silent> <C-h> <C-w><C-h>
nnoremap <silent> <C-j> <C-w><C-j>
nnoremap <silent> <C-k> <C-w><C-k>
nnoremap <silent> <C-l> <C-w><C-l>
" Find & Buffer
nnoremap <leader>f :find 
nnoremap <leader>tf :tabf 
nnoremap <leader>b :b 
nnoremap <leader>o :browse oldfiles<CR>
" Terminal
nnoremap <leader>th :term<CR>
" Splite
nnoremap <leader>= <C-w>t<C-w>K
nnoremap <leader>" <C-w>t<C-w>H
nnoremap <silent> <Left> :silent! vertical resize -3<CR>
nnoremap <silent> <Down> :silent! resize +3<CR>
nnoremap <silent> <Up> :silent! resize -3<CR>
nnoremap <silent> <Right> :silent! vertical resize +3<CR>
" System Clip
nnoremap <leader>sp "+P
nnoremap <leader>sP "*P
nnoremap <silent> <leader>syy "+yy :silent! let @*=@+<CR>
vnoremap <silent> <leader>sy "+y :silent! let @*=@+<CR>
" Fugitive
nnoremap <silent> <leader>g :silent! Gstatus<CR>
nnoremap <silent> <leader>gb :silent! Gblame<CR>
nnoremap <silent> <leader>gc :silent! Gcommit<CR>
" Toggle
noremap <silent> <C-z> :silent! ZoomToggle<CR>
nnoremap <silent> <leader>d :silent! Lex<CR>
nnoremap <silent> <leader>l :silent! LocalListToggle<CR>
" Preview
au Filetype tex nnoremap <leader>p :!zathura --fork "%:p:r.pdf"<CR><CR>
" Ban Arrow
vnoremap <Left> <nop>
vnoremap <Down> <nop>
vnoremap <Up> <nop>
vnoremap <Right> <nop>

" Abbreviate
ca help tab help

" Auto Command
" On Write
au BufWritePost config.h !cd '%:p:h' && sudo make clean install && cd ~-
au BufWritePost *.tex !pdflatex -quiet -output-directory="%:p:h" "%:p" && notify-send -u low --icon="$HOME/.cache/icon/pdficon2.png" "%:r.pdf" "$(pdfcount '%:p:r.pdf') words"
" Snippet
au BufNewFile,BufRead *.css ru css.vim
au BufNewFile,BufRead *.html ru html.vim
au BufNewFile,BufRead *.py ru python.vim
au BufNewFile,BufRead memo-* ru memo.vim
au BufNewFile,BufRead *.tex ru tex.vim

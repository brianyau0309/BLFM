"          _
"   __   _(_)_ __ ___  _ __ ___
"   \ \ / / | '_ ` _ \| '__/ __|
"  _ \ V /| | | | | | | | | (__
" (_) \_/ |_|_| |_| |_|_|  \___|
"if empty(glob('~/.vim/autoload/plug.vim'))
  "silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    "\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

" Leader Key
let mapleader=" "

" Cursor
let &t_SI="\<esc>[2 q"
let &t_SR="\<esc>[4 q"
let &t_EI="\<esc>[2 q"

" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'dhruvasagar/vim-table-mode'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'luochen1990/rainbow'
Plug 'dense-analysis/ale'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim'
Plug 'mcchrish/nnn.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Basic
syntax on
syntax enable
filetype plugin indent on
set background=light
set pumheight=15
set nocompatible
set number relativenumber
set updatetime=200
set viminfo+=n~/.vim/nviminfo
" Indent & Linebreak
set smartindent linebreak
" Fold
set foldmethod=manual
" Highlight
set hlsearch smartcase ignorecase
hi Comment ctermfg=67
hi QuickFixLine cterm=None
hi Search ctermbg=242
hi SpellBad ctermbg=124
hi Folded ctermbg=None
hi FoldColumn ctermbg=None
hi SignColumn ctermbg=None
hi ExtraWhitespace ctermbg=red
hi VertSplit cterm=None ctermbg=236
hi DiffAdd ctermfg=0
hi DiffChange ctermfg=0
hi Pmenu ctermfg=7 ctermbg=239
" Set Tab to 2 spaces
set tabstop=2 shiftwidth=2 expandtab
" Split
set splitbelow splitright
set fillchars+=vert:\ 
" Wildmenu
set wildmenu wildignorecase
set wildignore+=/usr/include/**,**/node_modules/**,**/__pycache__/**,**/.git/**,**/pvm/python/**,**/pvm/venv/**
" Show trailing space
match ExtraWhitespace / \+$/

" Plug setting
" nnn
let g:nnn#command = 'nnn -edH'
let g:nnn#layout = { 'window': { 'width': 0.8, 'height': 0.6, 'highlight': 'SpecialKey', 'bordor': 'sharp' } }
let g:nnn#action = { '<C-t>': 'tab split',
                   \ '<C-x>': 'split',
                   \ '<C-v>': 'vsplit' }
" netrw
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 10
let g:netrw_list_hide = netrw_gitignore#Hide()
let g:netrw_list_hide .= ',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_hide = 0
" ale
let g:ale_linters = { 'python': ['flake8'],
                    \ 'c': ['gcc'],
                    \ 'javascript': ['eslint'],
                    \ 'typescript': ['eslint', 'standard'],
                    \ 'vue': ['eslint'] }
let g:ale_linters_explicit = 1
" vim-closetag
let g:closetag_filenames = '*.xml,*.html,*.cshtml,*.js,*.jsx,*.vue'
" fzf.vim
set rtp+=~/.config/.fzf
let g:fzf_buffers_jump = 1
" Git Gutter
hi GitGutterAdd ctermbg=None
hi GitGutterChange ctermbg=None
hi GitGutterDelete ctermbg=None
hi GitGutterChangeDelete ctermbg=None
" Goyo
let g:goyo_width = 120
" Rainbow
let g:rainbow_active = 1
let g:rainbow_conf = {
\ 'separately': {
\   'html': 0,
\   'vue': 0,
\ }
\}
" emmet
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

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
    wincmd p
    let t:locallist = 1
  endif
endfunction
command! LocalListToggle call LocalListToggle()

" Key mapping
noremap <silent> <F1> :silent! setlocal spell! spelllang=en_uk<CR>
set pastetoggle=<F2>
nnoremap <silent> K :silent! nohls<CR>
" Window move
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
tnoremap <C-h> <C-w><C-h>
tnoremap <C-j> <C-w><C-j>
tnoremap <C-k> <C-w><C-k>
tnoremap <C-l> <C-w><C-l>
" Replace
nnoremap <leader>r :%s//gI<Left><Left><Left>
vnoremap <leader>r :s//gI<Left><Left><Left>
" fzf.vim
nnoremap <silent> <leader>f :silent! Files<CR>
nnoremap <silent> <leader>b :silent! Buffers<CR>
nnoremap <silent> <leader>/ :silent! BLines<CR>
nnoremap <silent> <leader>o :silent! History<CR>
" Terminal
nnoremap <silent> <leader>th :term ++rows=9<CR>
nnoremap <silent> <leader>tn :tab term<CR>
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
" Toggle
noremap <silent> <C-z> :silent! ZoomToggle<CR>
nnoremap <silent> <leader>d :silent! Lex<CR>
nnoremap <silent> <leader>l :silent! LocalListToggle<CR>
nnoremap <silent> <leader>m :silent! Goyo<CR>
" Ban Arrow
vnoremap <Left> <nop>
vnoremap <Down> <nop>
vnoremap <Up> <nop>
vnoremap <Right> <nop>

" Abbreviate
ca help tab help

" Auto Command
" Disable comment continuation
au BufNewFile,BufRead * set formatoptions-=cro
" Set markdown syntax for my memo
au BufNewFile,BufRead memo-* set ft=markdown
" Center while enter insert mode
au Insertenter * norm zz
" On Insert
au InsertEnter * let save_cwd = getcwd() | set autochdir
au InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
" On Write
au BufWritePost config.h !cd '%:p:h' && sudo make clean install && cd ~-
"au BufWritePost *.tex !pdflatex -quiet -output-directory="%:p:h" "%:p" && notify-send -u low --icon="$HOME/.cache/icon/pdficon2.png" "%:r.pdf" "$(pdfcount '%:p:r.pdf') words"
" Snippet
au BufNewFile,BufRead *.xml,*.html,*.cshtml,*.js,*.jsx,*.vue inoremap <buffer> <expr> <cr> getline(".")[col(".")-2:col(".")-1]=="><" ? "<cr><esc>O" : "<cr>"
au BufNewFile,BufRead *.css,*.sass,*.scss,*.html ru css.vim
au BufNewFile,BufRead *.py ru python.vim
au BufNewFile,BufRead memo-* ru memo.vim
au BufNewFile,BufRead *.tex ru tex.vim
au filetype netrw ru netrw.vim

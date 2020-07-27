"          _
"   __   _(_)_ __ ___  _ __ ___
"   \ \ / / | '_ ` _ \| '__/ __|
"  _ \ V /| | | | | | | | | (__
" (_) \_/ |_|_| |_| |_|_|  \___|

" vim-plug Install
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
   "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

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
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'luochen1990/rainbow'
Plug 'dense-analysis/ale'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/fzf.vim'
Plug 'mcchrish/nnn.vim'
Plug 'voldikss/vim-floaterm'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


" Basic
syntax on
syntax enable
filetype plugin indent on
set background=light
set pumheight=15
set number relativenumber
set updatetime=100
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
hi link sassClass Special
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
" airline
let g:airline#extensions#wordcount#filetypes = ['help', 'markdown', 'rst', 'org', 'text', 'asciidoc', 'tex', 'mail', 'ms', 'nroff']
" nnn
let g:nnn#command = 'nnn -edH'
let g:nnn#layout = { 'window': { 'width': 0.6, 'height': 0.6, 'highlight': 'SpecialKey', 'bordor': 'sharp' } }
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
                    \ 'cpp': ['gcc'],
                    \ 'javascript': ['eslint'],
                    \ 'typescript': ['eslint'],
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
let g:rainbow_conf = { 'separately': { 'html': 0,'vue': 0 } }
" emmet
let g:user_emmet_install_global = 0
au FileType xml,html,css,javascript,javascriptreact,vue,sass EmmetInstall


" Key mapping
noremap <silent> <F1> :silent! setlocal spell! spelllang=en_uk<CR>
set pastetoggle=<F2>
noremap <silent> <F11> :call G2BSC()<CR>
noremap <silent> <F12> :call B2GSC()<CR>
nnoremap <silent> K :silent! nohls<CR>
nnoremap n nzz
nnoremap <leader>] :!ctags -R<CR>
" Window move
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
" Replace
nnoremap <leader>r :%s//gI<Left><Left><Left>
vnoremap <leader>r :s//gI<Left><Left><Left>
" fzf.vim
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>
nnoremap <silent> <leader>/ :BLines<CR>
nnoremap <silent> <leader>o :History<CR>
" Terminal
let g:floaterm_keymap_new = '<F7>'
let g:floaterm_keymap_prev = '<F8>'
let g:floaterm_keymap_next = '<F9>'
let g:floaterm_keymap_toggle = '<F10>'
" Splite
nnoremap <leader>= <C-w>t<C-w>K
nnoremap <leader>" <C-w>t<C-w>H
nnoremap <silent> <Left> :vertical resize -3<CR>
nnoremap <silent> <Down> :resize +3<CR>
nnoremap <silent> <Up> :resize -3<CR>
nnoremap <silent> <Right> :vertical resize +3<CR>
" System Clip
nnoremap <leader>sp "+P
nnoremap <leader>sP "*P
nnoremap <leader>syy "+yy :let @*=@+<CR>
vnoremap <leader>sy "+y :let @*=@+<CR>
" Fugitive
nnoremap <silent> <leader>g :Gstatus<CR>
" Toggle
noremap <silent> <C-z> :silent! ZoomToggle<CR>
nnoremap <silent> <leader>d :Lex<CR>
nnoremap <silent> <leader>l :LocalListToggle<CR>
nnoremap <silent> <leader>m :Goyo<CR>
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
au InsertEnter * norm zz

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

" G2B Shortcut
function! G2BSC()
  if exists("*G2B")
    call G2B()
  else
    ru G2B.vim
    call G2B()
  endif
endfunction

" B2G Shortcut
function! B2GSC()
  if exists("*B2G")
    call B2G()
  else
    ru B2G.vim
    call B2G()
  endif
endfunction

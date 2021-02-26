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
" Plug 'dhruvasagar/vim-table-mode'
" Plug 'luochen1990/rainbow'
" Plug 'justinmk/vim-sneak'
" Plug 'voldikss/vim-floaterm'
" Plug 'junegunn/goyo.vim'
Plug 'voldikss/vim-translator'
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mcchrish/nnn.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" coc-pairs
" coc-tsserver
" coc-python
" coc-json
" coc-css
" coc-prettier
call plug#end()


" Basic
syntax on
syntax enable
filetype plugin indent on
set background=light
set mouse+=niv
set conceallevel=2
set pumheight=15
set number relativenumber
set updatetime=300
set viminfo+=n~/.vim/nviminfo
set undofile
set fileencodings-=latin1
set fileencodings+=big5,gbk,latin1
" Indent & Linebreak
set smartindent linebreak
" Fold
set foldmethod=manual
" Highlight
set hlsearch smartcase ignorecase
hi Comment ctermfg=67
" hi Comment ctermfg=32
hi QuickFixLine cterm=None
hi Search ctermbg=242
hi TabLineSel ctermbg=white ctermfg=black
hi clear TabLine
hi clear TabLineFill
hi SpellBad ctermbg=124
hi Folded ctermbg=None
hi FoldColumn ctermbg=None
hi SignColumn ctermbg=None
hi ExtraWhitespace ctermbg=red
hi VertSplit cterm=None ctermbg=236
hi DiffAdd ctermfg=0 ctermbg=green
hi DiffChange ctermfg=0 ctermbg=yellow
hi DiffDelete ctermfg=0 ctermbg=red
hi DiffText ctermfg=0 ctermbg=blue
hi Pmenu ctermfg=7 ctermbg=239
hi FloatermBorder ctermfg=7 ctermbg=None
hi link sassClass Special
" vim_indent_guides
hi IndentGuidesEven ctermbg=236
" Git Gutter
hi GitGutterAdd ctermbg=None ctermfg=green
hi GitGutterChange ctermbg=None ctermfg=yellow
hi GitGutterDelete ctermbg=None ctermfg=red
hi GitGutterChangeDelete ctermbg=None ctermfg=red
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
let g:nnn#command = 'nnn -eH'
let g:nnn#layout = { 'window': { 'width': 0.8, 'height': 0.8, 'highlight': 'SpecialKey', 'bordor': 'sharp' } }
let g:nnn#action = { '<C-t>': 'tab drop',
                   \ '<C-x>': 'split',
                   \ '<C-v>': 'vsplit' }
" floaterm
let g:floaterm_height = 0.8
let g:floaterm_width = 0.8
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
                    \ 'javascript': ['eslint', 'tsserver'],
                    \ 'javascriptreact': ['eslint', 'tsserver'],
                    \ 'typescript': ['eslint', 'tsserver', 'tslint'],
                    \ 'typescriptreact': ['eslint', 'tsserver'],
                    \ 'rust': ['rustc', 'cargo'],
                    \ 'go': ['gopls'] }
let g:ale_linters_explicit = 1
let g:ale_sign_error = '🤬'
let g:ale_sign_warning = '🤔'
hi clear ALEErrorSign
hi clear ALEWarningSign
" vim-closetag
let g:closetag_filenames = '*.xml,*.html,*.cshtml,*.js,*.jsx,*.tsx,*.vue,*.svelte'
" fzf.vim
" let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.5, 'yoffset': 1, 'border': 'horizontal' } }
let g:fzf_layout = { 'down': '50%' }
let g:fzf_buffers_jump = 1
let g:fzf_action = { 'enter': 'drop',
                   \ 'ctrl-t': 'tab drop',
                   \ 'ctrl-x': 'split',
                   \ 'ctrl-v': 'vsplit' }
" Goyo
let g:goyo_width = 120
" Rainbow
let g:rainbow_active = 1
let g:rainbow_conf = { 'separately': { 'html': 0,'vue': 0 } }
" vim_indent_guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
" nerdcommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
" Sneak
" let g:sneak#label = 1
" Easymotion
let g:EasyMotion_enter_jump_first = 1
" vim-translator
let g:translator_target_lang = 'zh-TW'
hi TranslatorBorder ctermbg=none

" Key mapping
noremap <silent> <F1> :silent! setlocal spell! spelllang=en_uk<CR>
set pastetoggle=<F2>
noremap <silent> <F11> :call G2BSC()<CR>
noremap <silent> <F12> :call B2GSC()<CR>
" nnoremap <silent> K :silent! nohls<CR>
nnoremap n nzz
nnoremap N Nzz
nnoremap <leader>] :!ctags -R<CR>
nnoremap <leader>a mmggVG
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
nnoremap <leader>p "+P
nnoremap <leader>P "*P
nnoremap <silent> <leader>yy "+yy :let @*=@+<CR>
vnoremap <silent> <leader>y "+y :let @*=@+<CR>
" Fugitive
nnoremap <silent> <leader>g :Gstatus<CR>
" Toggle
nnoremap <silent> <leader>z :ZoomToggle<CR>
nnoremap <silent> <leader>d :Lex<CR>
nnoremap <silent> <leader>l :LocalListToggle<CR>
nnoremap <silent> <leader>m :Goyo<CR>
nnoremap <silent> <leader>u :UndotreeToggle<CR>
" Ban Arrow
vnoremap <Left> <nop>
vnoremap <Down> <nop>
vnoremap <Up> <nop>
vnoremap <Right> <nop>
" ALE
nnoremap <silent>]e :ALENext<CR>
nnoremap <silent>[e :ALEPrevious<CR>
nmap <silent>gd :ALEGoToDefinition<CR>
" coc
nnoremap <silent> <leader>h :call CocActionAsync('doHover')<cr>
inoremap <silent><expr> <C-Space> coc#refresh()
" coc-prettier
nnoremap <silent> == :CocCommand prettier.formatFile<CR>
" coc-pairs
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" inoremap {<Space> {<Space><Space>}<Left><Left>
" inoremap [<Space> [<Space><Space>]<Left><Left>
" Easymotion
nmap s <Plug>(easymotion-s)
nmap S <Plug>(easymotion-overwin-f2)
" vim-translator
nmap <silent> <Leader>t <Plug>TranslateW
vmap <silent> <Leader>t <Plug>TranslateWV


" Abbreviate
ca help tab help
ca tn tabnew
ca wq x
ca wqa xa
ca ft Filetypes


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
au BufNewFile,BufRead *.css,*.sass,*.scss,*.html ru css.vim
au BufNewFile,BufRead *.py ru python.vim
au BufNewFile,BufRead memo-* ru memo.vim
au BufNewFile,BufRead *.tex ru tex.vim
au BufNewFile,BufRead *.md ru markdown.vim
au Filetype netrw ru netrw.vim


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

" ripgrep no ignore
command! -bang -nargs=* RG
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case --no-ignore -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

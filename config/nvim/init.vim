"          _
"   __   _(_)_ __ ___  _ __ ___
"   \ \ / / | '_ ` _ \| '__/ __|
"  _ \ V /| | | | | | | | | (__
" (_) \_/ |_|_| |_| |_|_|  \___|

" vim-plug Install
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"   https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

" Leader Key
let mapleader=" "

" Cursor
let &t_SI="\<esc>[2 q"
let &t_SR="\<esc>[4 q"
let &t_EI="\<esc>[2 q"

" vim-plug
call plug#begin('~/.vim/plugged')
" Plug 'tpope/vim-obsession'
" Plug 'mhinz/vim-startify'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'airblade/vim-gitgutter'
Plug 'nvim-lua/plenary.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-eunuch'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'mattn/emmet-vim'
Plug 'vimwiki/vimwiki'
Plug 'voldikss/vim-translator'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'RRethy/vim-illuminate'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'dense-analysis/ale'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/gv.vim'
Plug 'mcchrish/nnn.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" coc-tabline
" coc-pairs
" coc-tsserver
" coc-prettier
" coc-python
" coc-json
" coc-css
call plug#end()


" Basic
" set termguicolors
syntax on
syntax enable
set nocompatible
set hidden
set encoding=utf-8
filetype plugin indent on
" set background=light
" colorscheme codedark
set mouse+=niv
set conceallevel=2
set pumheight=15
set number relativenumber
set updatetime=100
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
hi Constant cterm=italic,bold ctermfg=1
" Tabline
set showtabline=0
" ctermfg=3
hi String ctermfg=173
hi Number ctermfg=173
hi Identifier cterm=italic,bold
hi Comment cterm=italic ctermfg=67
hi PreProc cterm=italic,bold
" hi Comment ctermfg=30
" hi Comment ctermfg=32
hi Visual cterm=reverse ctermbg=none
hi QuickFixLine cterm=None
hi Search ctermbg=255 ctermfg=0 cterm=bold
" hi TabLineSel ctermbg=white ctermfg=black
" hi clear TabLine
" hi clear TabLineFill
hi SpellBad ctermbg=124
hi Folded ctermbg=None
hi FoldColumn ctermbg=None
hi SignColumn ctermbg=None
hi ExtraWhitespace ctermbg=red
hi VertSplit cterm=None ctermbg=236
hi DiffAdd ctermbg=None ctermfg=2
hi DiffChange ctermbg=None ctermfg=yellow
hi DiffDelete ctermbg=None ctermfg=red
hi DiffText ctermbg=None ctermfg=blue
hi Pmenu ctermfg=7 ctermbg=239
hi link sassClass Special
hi CursorLine cterm=None ctermbg=232
hi CursorColumn cterm=None ctermbg=232
" Git Gutter
hi GitGutterAdd ctermbg=None ctermfg=2
hi GitGutterChange ctermbg=None ctermfg=yellow
hi GitGutterDelete ctermbg=None ctermfg=red
hi GitGutterChangeDelete ctermbg=None ctermfg=red
" polyglot
" hi jsVariableDef ctermfg=4
" hi jsVariableDef ctermfg=4
" hi link jsDestructuringBlock jsVariableDef
" hi link jsFuncBlock jsVariableDef
" hi link jsBracket jsVariableDef
" hi link jsIfElseBlock jsVariableDef
" hi link jsTryCatchBlock jsVariableDef
" hi link jsTernaryIf jsVariableDef
" hi link jsParenIfElse jsVariableDef
" hi link jsParen jsVariableDef
" hi link jsObjectKey jsVariableDef
" hi jsObjectValue ctermfg=45
hi jsFuncArgs ctermfg=4
hi jsObjectProp ctermfg=4
hi jsObjectKey ctermfg=75
hi link jsParenCatch Constant
hi link jsFuncArgOperator jsOperator
" hi jsGlobalNodeObjects ctermfg=161
hi illuminatedWord cterm=underline
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
" polyglot
let g:vim_svelte_plugin_use_typescript = 1
let g:vim_svelte_plugin_use_less = 1
let g:vim_svelte_plugin_use_sass = 1
let g:javascript_plugin_flow = 1
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 0
" airline
let g:airline#extensions#wordcount#filetypes = ['help', 'markdown', 'rst', 'org', 'text', 'asciidoc', 'tex', 'mail', 'ms', 'nroff']
let g:airline#extensions#scrollbar#enabled = 0

let g:airline#extensions#bufferline#enabled = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#buffers_label = ''

" nnn
let g:nnn#command = 'nnn -eH'
let g:nnn#layout = { 'window': { 'width': 0.8, 'height': 0.8, 'highlight': 'SpecialKey', 'bordor': 'sharp' } }
let g:nnn#action = { '<C-t>': 'tab drop',
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
                    \ 'javascript': ['eslint', 'flow'],
                    \ 'javascriptreact': ['eslint'],
                    \ 'typescript': ['eslint', 'tsserver', 'tslint'],
                    \ 'typescriptreact': ['eslint', 'tsserver'],
                    \ 'rust': ['rls','rustc', 'cargo'],
                    \ 'go': ['gopls'] }
let g:ale_linters_explicit = 1
let g:ale_sign_error = '🤬'
let g:ale_sign_warning = '🤔'
hi clear ALEErrorSign
hi clear ALEWarningSign
" vim-closetag
let g:closetag_filenames = '*.xml,*.html,*.cshtml,*.js,*.jsx,*.tsx,*.vue,*.svelte'
" fzf.vim
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.5, 'yoffset': 1, 'border': 'horizontal' } }
" let g:fzf_layout = { 'down': '50%' }
let g:fzf_buffers_jump = 1
let g:fzf_action = { 'enter': 'drop',
                   \ 'ctrl-t': 'tab drop',
                   \ 'ctrl-x': 'split',
                   \ 'ctrl-v': 'vsplit' }
" indentLine
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*', '*.wiki', '*.md', '*.memo']
let g:indentLine_fileTypeExclude = ['vimwiki', 'markdown']
let g:indentLine_bufTypeExclude = ['help', 'terminal', 'vimwiki']
" Easymotion
let g:EasyMotion_enter_jump_first = 1
" vim-translator
let g:translator_target_lang = 'zh-TW'
hi TranslatorBorder ctermbg=none
" vimwiki
let g:vimwiki_ext2syntax = { '.md': 'markdown' }
let g:vimwiki_list = [{'path': '~/Documents/vimwiki',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:markdown_fenced_languages = ['css', 'javascript', 'js=javascript', 'json', 'html']
" peekaboo
let g:peekaboo_window = "vert bo 70new"
let g:peekaboo_prefix = '"'
" startify
let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]
" ctrlspace
let g:CtrlSpaceDefaultMappingKey = "<C-space> "
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1
if executable('rg')
    let g:CtrlSpaceGlobCommand = 'rg --color=never --files --ignore-file=.gitignore'
elseif executable('fd')
    let g:CtrlSpaceGlobCommand = 'fd --type=file --color=never'
elseif executable('ag')
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
endif
" gitgutter
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_modified_removed = ''
let g:gitgutter_sign_removed = ''
" gitsigns
lua << EOF
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitGutterAdd',          },
    change       = {hl = 'GitGutterChange',       },
    delete       = {hl = 'GitGutterDelete',       },
    topdelete    = {hl = 'GitGutterDelete',       },
    changedelete = {hl = 'GitGutterChangeDelete', },
  },
  current_line_blame = true,
  current_line_blame_opts = {
    delay = 100
  },
}
EOF

" Key mapping
noremap <silent> <F1> :silent! setlocal spell! spelllang=en_uk<CR>
set pastetoggle=<F2>
noremap <silent> <F11> :call G2BSC()<CR>
noremap <silent> <F12> :call B2GSC()<CR>
nnoremap <silent> K :silent! nohls<CR>
nnoremap n nzz
nnoremap N Nzz
nnoremap <leader>] :!ctags -R<CR>
nnoremap <leader>a mmggVG
" Window move
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Replace
nnoremap <leader>rr :%s//gI<Left><Left><Left>
vnoremap <leader>r :s//gI<Left><Left><Left>
" fzf.vim
nnoremap <silent> <leader>ff :Files<CR>
nnoremap <silent> <leader>fd :Dirs<CR>
nnoremap <silent> <leader>fb :Buffers<CR>
nnoremap <silent> <leader>f/ :BLines<CR>
nnoremap <silent> <leader>fh :History<CR>
nnoremap <silent> <leader>fw :call FzfRgCurrWord()<CR>
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
nnoremap <silent> <leader>gg :Git<CR>
nnoremap <silent> <leader>gds :Gvdiffsplit!<CR>
nnoremap <silent> <leader>dg3 :diffget //3<CR>
nnoremap <silent> <leader>dg2 :diffget //2<CR>
" Toggle
nnoremap <silent> <leader>z :ZoomToggle<CR>
nnoremap <silent> <leader>d :NERDTreeTabsToggle<CR>
nnoremap <silent> <leader>l :LocalListToggle<CR>
nnoremap <silent> <leader>u :UndotreeToggle<CR>
" Ban Arrow
vnoremap <Left> <nop>
vnoremap <Down> <nop>
vnoremap <Up> <nop>
vnoremap <Right> <nop>
" ALE
nnoremap <silent>]e :ALENext<CR>zz
nnoremap <silent>[e :ALEPrevious<CR>zz
nmap <silent>gd :ALEGoToDefinition<CR>
" coc
nnoremap <silent> <leader>hh :call CocActionAsync('doHover')<cr>
inoremap <silent><expr> <C-Space> coc#refresh()
nmap <silent> <leader>rn <Plug>(coc-rename)
" coc-prettier
nnoremap <silent> == :CocCommand prettier.formatFile<CR>
au BufEnter,BufNewFile,BufRead *.rs nnoremap <silent> == :call CocAction('format')<CR>
" coc-pairs
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Easymotion
nmap s <Plug>(easymotion-overwin-f)
nmap S <Plug>(easymotion-overwin-f2)
" vim-translator
nmap <silent> <Leader>t <Plug>TranslateW
vmap <silent> <Leader>t <Plug>TranslateWV
" vim-commentary
nmap gcp gcap
nmap gcb gci{


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
" On Write suckless
au BufWritePost config.h !cd '%:p:h' && sudo make clean install && cd ~-
" au BufWritePost *.tex !pdflatex -quiet -output-directory="%:p:h" "%:p" && notify-send -u low --icon="$HOME/.cache/icon/pdficon2.png" "%:r.pdf" "$(pdfcount '%:p:r.pdf') words"
" Snippet
au BufNewFile,BufRead *.css,*.sass,*.scss,*.html ru css.vim
au BufNewFile,BufRead *.py ru python.vim
au BufNewFile,BufRead memo-* ru memo.vim
au BufNewFile,BufRead *.tex ru tex.vim
" au BufNewFile,BufRead *.md ru markdown.vim
au Filetype netrw ru netrw.vim
" Cursor Line
au VimEnter * setlocal cursorline
au WinEnter * setlocal cursorline
au BufWinEnter * setlocal cursorline
au WinLeave * setlocal nocursorline
" vimwiki
au BufEnter,BufNewFile,BufRead *.md setlocal syntax=markdown
au BufEnter,BufNewFile,BufRead *.md setlocal nolinebreak


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

command! -bang -nargs=* Dirs
  \ call fzf#run(fzf#wrap({'source': 'fd -t d'}))

function! FzfRgCurrWord()
   let currWord = expand('<cword>')
   if len(currWord) > 0
      execute 'Rg' currWord
   endif
endfunction

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

nnoremap <buffer> <silent> <C-n> /[.\]<CR>l:silent! nohls<CR>
nnoremap <buffer> <silent> <C-p> ?[.\]<CR>nl:silent! nohls<CR>
nmap <silent><buffer> <CR> gx
" Template
ia <buffer> td <Esc>:.!date "+\%d-\%m-\%Y"<CR>IDaily Plan <Esc>o# Todo<CR><CR>- [ ]
ia <buffer> tmr <Esc>:.!date -d tomorrow "+\%d-\%m-\%Y"<CR>IDaily Plan <Esc>o# Todo<CR><CR>- [ ]
ia <buffer> rb - [ ]

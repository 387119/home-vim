syntax off
filetype plugin indent off

"неокомплит
inoremap <expr><Tab>  neocomplete#start_manual_complete()
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
" " Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

"let g:SuperTabDefaultCompletionType = "<c-n>"
" " ********************************************
"
" <TAB>: completion.
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" " <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"

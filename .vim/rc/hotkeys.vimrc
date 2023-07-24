syntax off
filetype plugin indent off

" ******** комбинации клавиш **************
" копирование выделенного блока в общесистемный буфер
"следующая строчка нужна при работе в VIM через SSH консоль в screen, для
" локального использования ненужна, также с этой строчкой копируется вся
" строка вне зависимости от выделения
"vmap "+y :!xclip -f -sel clip<CR>
vmap <F2> "+y
"vmap <C-Insert> "+y
nmap <c-t> :tabnew ./<CR>
vmap <C-s> <esc>:w<CR> :redr!<CR>
inoremap <C-s> <esc>:w<cr> :redr!<CR> a
nnoremap <C-s> :w<cr> :redr!<CR>
"map <C-s> :w<CR>:redir!<CR>
" корректировка комбинаций смены TAB если vim запущен в screen
nmap <ESC>[5;5~ <C-PageUp>
nmap <ESC>[6;5~ <C-PageDown>
set pastetoggle=<F7> " режим вставки позвоеляет вставлять тест без лесенки, сохраняя форматирование

nnoremap <F5> :UndotreeToggle<CR>

" NERDTree keymaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" копирование буферных регистров в буферы обмена X
"let @+=@"
"let @*=@"
"let @+=@a

"работа с буферами
nmap ; :ls<CR>

nmap <ESC>[5;5~ <C-PageUp>
nmap <ESC>[6;5~ <C-PageDown>
nmap ; :ls<CR>
au BufRead,BufNewFile *.proj set filetype=xml
au BufRead,BufNewFile *.yml set filetype=yaml
au BufRead,BufNewFile *.yaml set filetype=yaml
autocmd BufEnter * syntax sync fromstart
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


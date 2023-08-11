syntax off
filetype plugin indent off

" ********** Строка статуса ************
set wildmenu "при использовании авто-дополнения в командной строке показывать доступные варианты над командной строкой
set laststatus=2 "Значение 2 указывает, что строка статуса всегда должна показываться
"set statusline=%<%f\ [%Y%R%W]%1*%{(&modified)?'\ [+]\ ':''}%*%=%c%V,%l\ %P\ [%n]
set statusline =%F%m%r%h%w\ [FF,FE,TE=%{&fileformat},%{&fileencoding},%{&encoding}\]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]
set statusline +=[LINES=%L%*]               "total lines
hi StatusLine gui=reverse cterm=reverse
"
" ********** Конец строки статуса *****


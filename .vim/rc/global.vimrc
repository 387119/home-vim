syntax off
filetype plugin indent off

" ********* глобальные установки мои ********
set rtp+=~/.vim/old
set rtp+=~/.vim/my
set mouse=a " включение скроллинга мышью
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866
set matchpairs+=<:> " показывать совпадающие скобки для HTML-тегов
set t_Co=256 " использовать больше цветов в терминале
set list " включить подсветку
set listchars=tab:>-,trail:- " установить символы, которыми будет осуществляться подсвет
set textwidth=0 " отключаем авто перенос строк при наборе
"set wrapmargin=0 " отключаем перенос строк по достижению границы окна
set autoindent " автоотступ предыдущей строки при нажатии Enter
""set smartindent=0 " умный отступ отключаем
set number " показать нумерацию строк
set undofile "включить вечную отмену изменений
set backupdir=~/.vim/backup// " 2 слеша в конце означает создавать структуру директорий открытого файла
set directory=~/.vim/swap//
set undodir=~/.vim/undo//  "директория для файлов с историей изменений
set guioptions-=T  "remove toolbar
"set expandtab "табы в пробелы
set tabstop=4 "сколько символов в tab
set softtabstop=0 "количество пробелов, которыми символ табуляции отображается при добавлении
set shiftwidth=4 "используется для регулирование ширины отступов в пробелах должен быть = tabstop
set backspace=indent,eol,start "изменение поведения кнопки backspace
"set clipboard=unnamedplus "установка копирования/вставки с основного clipboard
set foldmethod=indent
set hlsearch
set nocompatible
let g:gitgutter_set_sign_backgrounds = 1
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"let g:SuperTabDefaultCompletionType = "<c-n>"
let g:indentLine_char = '|'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
"let g:gh_open_command = 'fn() { echo "$@" }; fn '
let g:gh_trace = 1

" POWERLINE PLUGIN START
"if exists('vim-airline/vim-airline')
"let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
"let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
"let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
"let g:Powerline_symbols='unicode' "Поддержка unicode
"let g:airline#extensions#xkblayout#enabled = 0 "Про это позже расскажу
" POWERLINE PLUGIN END

" LIGHTLINE PLUGIN START
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
" LIGHTLINE PLUGIN END

"let g:session_autoload = 'yes'
"let g:session_autosave = 'yes'

function! FindGitProjectName()
  let s:name = getcwd()
  if !isdirectory(".git")
    let s:name = substitute(finddir(".git", ".;"), "/.git", "", "")
  end
  if s:name != ""
    let s:name = matchstr(s:name, ".*", strridx(s:name, "/") + 1)
  end
  return s:name
endfunction

" Sessions only restored if we start Vim without args.
function! RestoreGitSession(name)
  if a:name != ""
    if filereadable($HOME . "/.vim/sessions/" . a:name)
      execute 'source ' . $HOME . "/.vim/sessions/" . a:name
    end
  end
endfunction

" Sessions only saved if we start Vim without args.
function! SaveGitSession(name)
  if a:name != ""
    execute 'mksession! ' . $HOME . '/.vim/sessions/' . a:name
  end
endfunction

" Restore and save sessions.
if argc() == 0
  autocmd VimEnter * call RestoreGitSession(FindGitProjectName())
  autocmd VimLeave * call SaveGitSession(FindGitProjectName())
  autocmd BufWritePost * call SaveGitSession(FindGitProjectName())
end

" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

filetype plugin on
syntax on


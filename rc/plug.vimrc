syntax off
filetype plugin indent off

call plug#begin('~/.vim/bundle')
" Сборник всех плагинов для vim http://vimawesome.com/
"Plug 'godlygeek/tabular' "выравнивание по шаблонам, может потом поиграюсь
Plug 'plasticboy/vim-markdown'

" Автодополнялки
"Plug 'valloric/youcompleteme' "хуйня какаято, мало того что изза этого плагина запуск vim увеличивается на несколько секунд, так ещё изза него не пашет supertab
"Plug 'ervandew/supertab'
Plug 'shougo/neocomplete.vim' "мне этот плагин понравился
Plug 'MicahElliott/Rocannon' "вроде хороший плагин по автодополнению для ансибла

Plug 'jamessan/vim-gnupg'
"Plug 'othree/html5.vim'
"Plug 'davidhalter/jedi-vim'
"Plug 'rip-rip/clang_complete'
"Plug 'chrisbra/unicode.vim'
" команды vim для дебага по автодополнялкам
" :help ins-completion (посмотреть omni автодополнялки)
" :verbose imap <tab> (посмотреть последнюю привязку что открылось по tab)
" конец автодополнялок

" nerdtree
" https://github.com/ryanoasis/nerd-fonts " поставить
Plug 'scrooloose/nerdtree' "дерево файлов
Plug 'ryanoasis/vim-devicons' "иконки для файлоа
Plug 'Xuyuanp/nerdtree-git-plugin' "иконки статуса гит
Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
" others
Plug 'preservim/nerdcommenter' "коментарии для кода
Plug 'vimwiki/vimwiki' "создание wiki страниц и возможность их экспорта в html
Plug 'mbbill/undotree' "Плагин истории изменений
Plug 'Rykka/colorv.vim' "Раскраска цветов при редактировании кода в тот цвет который указан например #FF0000 будет раскрашен в красный
Plug 'scrooloose/syntastic' "Проверка синтаксиса, поддерживает вагон и маленькую тележку языков
"Plugin 'pangloss/vim-javascript' "Поддержка javascript , чтиво http://vimawesome.com/plugin/vim-javascript
"Plugin 'mattn/emmet-vim' "прикольная шняга, для html самое оно, чтиво - http://vimawesome.com/plugin/emmet-vim
"Plugin 'honza/vim-snippets' "тож прикольная шняга, шаблонизатор, чтиво - http://vimawesome.com/plugin/vim-snippets
"Plug 'chrisbra/sudoedit.vim' "Повышение привелегий до root при работе с файлами
Plug 'tpope/vim-eunuch' "даёт системные команды, такие как удаление перемещение права файлов и редактирование под sudo
"Plugin 'chrisbra/csv.vim' "Работа с CSV файлами
"conque_term.vim "Возможность терминала в tabe vim, удобно использовать для запуска скриптов при отладке программы (почти не пользовался, надо проверить нужен ли)
Plug 'itchyny/lightline.vim' " прикольная строка статуса
Plug 'itchyny/vim-gitbranch' " нужно для показывания брани для строки статуса
" эти сесии мне не зашли, работают автосесии на гит проекты
"Plug 'xolox/vim-misc' "поддержка сесий 
"Plug 'xolox/vim-session' "поддержка сесий 
Plug 'chase/vim-ansible-yaml'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " требует скачку
"бинарника
"Plug 'junegunn/fzf.vim'
Plug 'hashivim/vim-terraform' "синтаксис и др для редактирования терраформ файлов
Plug 'knsh14/vim-github-link'
Plug 'airblade/vim-gitgutter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/seoul256.vim'
" из GE
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'MTDL9/vim-log-highlighting'
Plug 'vim-scripts/sessionman.vim'
Plug 'ruanyl/vim-gh-line'
Plug 'stephpy/vim-yaml'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-obsession'

call plug#end()


" основная суть при одинаковых настройках и одинаковых плагинах, "работает то что применилось последним".

set nocompatible "отключаем режим совместимости с vi
syntax off
filetype plugin indent off

" Менеджер плагинов
source ~/.vim/rc/plug.vimrc

" Старые настройки которые надо отсортировать
"source ~/.vim/old/.vimrc

" Подключение внешних файлов настроек
source ~/.vim/rc/global.vimrc
source ~/.vim/rc/statusline.vimrc
source ~/.vim/rc/hotkeys.vimrc
source ~/.vim/rc/autocomplete.vimrc

" последние настройки, после подгрузки всех модулей.
syntax on
filetype plugin indent on

" По какойто необьяснимой причине персонализация цветов и схемы подключается в последнюю очередь
source ~/.vim/rc/colors.vimrc


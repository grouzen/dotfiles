set fileencodings=utf-8
syntax on
set autoindent
set expandtab
set softtabstop=4 
set hlsearch
set nowrap
set sidescroll=5
set background=dark
set number
set loadplugins

set nomousehide
set noguipty
let python_highlight_all = 1

"competion for c
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
"set autoindent
""set autowrap



"colorscheme murphy
colorscheme default
" Tab autocompletion
"function InsertTabWrapper()
"      let col = col('.') - 1
"      if !col || getline('.')[col - 1] !~ '\k'
"            return "\<tab>"
"      else
"            return "\<c-p>"
"      endif
"endfunction
imap <tab> <c-r>=InsertTabWrapper()<cr>
set complete=""
set complete+=.
set complete+=k
set complete+=b
set complete+=t
set completeopt-=preview
set completeopt+=longest

"good pasting from clipboard
set pastetoggle=<F5>

" отмена последнего действия
imap <F1> <Esc>:undo<CR>i
nmap <F1> <Esc>:undo<CR>
" отмена отмены
imap <F2> <Esc>:redo<CR>i
nmap <F2> <Esc>:redo<CR>

" запись в файл (почти как в nano)
imap <F3> <Esc>:w 
nmap <F3> <Esc>:w 

"" список буферов
imap <F9> <Esc>:buffers<CR>
nmap <F9> :buffers<CR>
"" закрыть буфер 
imap <F10> <Esc>:bd<CR>a
nmap <F10> <Esc>:bd<CR>
"" следующий буфер
imap <F6> <Esc>:bn!<CR>
nmap <F6> <Esc>:bn!<CR>
"" предыдущий буфер
imap <F5> <Esc>:bp!<CR>
nmap <F5> <Esc>:bp!<CR>
" компиляция C-программ 
"% - name current file
"%< - name current file without siffix
imap <F7> <Esc>:!gcc -o %< -g -Wall -Wextra -O2 %<CR>
nmap <F7> <Esc>:!gcc -o %< -g -Wall -Wextra -O2 %<CR>
"imap <F7> <Esc>:!gcc -o %< %<CR>
"nmap <F7> <Esc>:!gcc -o %< %<CR>

" вариант с табами
"imap <F9> <Esc>:tabe 
"nmap <F9> :tabe 
" закрыть 
"imap <F10> <Esc>:q<CR>
"nmap <F10> <Esc>:q<CR>
" следующий 
"imap <F6> <Esc>:tabnext<CR>
"nmap <F6> <Esc>:tabnext<CR>
" предыдущий
"imap <F5> <Esc>:tabprev<CR>
"nmap <F5> <Esc>:tabprev<CR>
"
" вход и выход в режим редактирования )
imap <F4> <Esc>
nmap <F4> i
" удалиение строки
imap <F8> <Esc>ddi
nmap <F8> dd
" шаблон для python (для исполняемого)
nmap <F11> <ESC>i#!/usr/bin/env python<CR># -*- encoding: utf-8 -*-<CR><CR>
" шаблон для "либы" )
nmap <F12> <ESC>i# -*- encoding: utf-8 -*-<CR><CR>
" "умный" <Home>
nmap <Home> ^
imap <Home> <Esc>I
" autocmd VimLeavePre *! silent mksession "~/.vim/lastSession.vim"!

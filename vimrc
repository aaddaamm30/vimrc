" Da Vim RRRRccccc

"Vundle commands
set nocompatible
filetype off
"set the runtime path to include Vundle and initialize

"end of Vundle commands

"set tab size
set tabstop=4
set shiftwidth=4
set expandtab

"syntax control
syntax on

"put swap files in tmp directory
set directory^=$HOME/.vim/tmp//

"numbers help
set number
set relativenumber

"map insert exit to jj
imap jj <esc>

"header files for python, c, cpp, prolog
autocmd bufnewfile *.py so /home/adam.loo/Templates/py_header.txt
autocmd bufnewfile *.py exe "2," . 12 . "g/File        :.*/s//File        : " .expand("%")
autocmd bufnewfile *.py exe  "2," . 12 . "g/Created     :.*/s//Created     : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.py execute "normal ma"
autocmd Bufwritepre,filewritepre *.py exe "2," . 12 . "g/Last Edited :.*/s//Last Edited : " .strftime("%c")
autocmd bufwritepost,filewritepost *.py execute "normal 'a"

autocmd bufnewfile *.c so /home/adam.loo/Templates/c_header.txt
autocmd bufnewfile *.c exe "2," . 12 . "g/File        :.*/s//File        : " .expand("%")
autocmd bufnewfile *.c exe  "2," . 12 . "g/Created     :.*/s//Created     : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.c execute "normal ma"
autocmd Bufwritepre,filewritepre *.c exe "2," . 12 . "g/Last Edited :.*/s//Last Edited : " .strftime("%c")
autocmd bufwritepost,filewritepost *.c execute "normal 'a"

autocmd bufnewfile *.cpp so /home/adam.loo/Templates/c_header.txt
autocmd bufnewfile *.cpp exe "2," . 12 . "g/File        :.*/s//File        : " .expand("%")
autocmd bufnewfile *.cpp exe  "2," . 12 . "g/Created     :.*/s//Created     : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.cpp execute "normal ma"
autocmd Bufwritepre,filewritepre *.cpp exe "2," . 12 . "g/Last Edited :.*/s//Last Edited : " .strftime("%c")
autocmd bufwritepost,filewritepost *.cpp execute "normal 'a"

autocmd bufnewfile *.pl so /home/adam.loo/Templates/c_header.txt
autocmd bufnewfile *.pl exe "2," . 12 . "g/File        :.*/s//File        : " .expand("%")
autocmd bufnewfile *.pl exe  "2," . 12 . "g/Created     :.*/s//Created     : " .strftime("%d-%m-%Y")
autocmd Bufwritepre,filewritepre *.pl execute "normal ma"
autocmd Bufwritepre,filewritepre *.pl exe "2," . 12 . "g/Last Edited :.*/s//Last Edited : " .strftime("%c")
autocmd bufwritepost,filewritepost *.pl execute "normal 'a"

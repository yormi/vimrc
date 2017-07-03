" make vim try to detect file types and load plugins for them
filetype on
filetype plugin on

" On file types...
autocmd BufNewFile,BufRead *.md setlocal ft=markdown
autocmd BufNewFile,BufRead *.elm setlocal ft=elm

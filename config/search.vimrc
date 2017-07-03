" search settings
" use ESC to remove search higlight
nnoremap <esc> :noh<return><esc>

" Ag Silver Search
" open ag.vim
nnoremap <leader>a :Ag 

" EasyGrep
let g:EasyGrepMode=2
let g:EasyGrepRecursive=1
let g:EasyGrepIgnoreCase=0
let g:EasyGrepWindow=1
let g:EasyGrepReplaceWindowMode=2 "writeall when open replace window
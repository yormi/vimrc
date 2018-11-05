" search settings
" use ESC to remove search highlight
nnoremap <esc> :noh<return><esc>

" Ag Silver Search
" open ag.vim
nnoremap <leader>a :Ag 
nnoremap <leader>A :Far -s<Left><Left><Left> 

" Farp
let g:far#source='ag'
let g:far#file_mask_favorites=['%', '**/*.elm', '**/*.js']

" " EasyGrep
" let g:EasyGrepMode=2
" let g:EasyGrepRecursive=1
" let g:EasyGrepIgnoreCase=0
" let g:EasyGrepWindow=1
" let g:EasyGrepReplaceWindowMode=2 "writeall when open replace window

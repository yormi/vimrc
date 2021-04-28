" search settings
" use ESC to remove search highlight
nnoremap <esc> :noh<return><esc>

" Ag Silver Search
" open ag.vim
nnoremap <leader>a :Ag <Right>
nnoremap <leader>A :Far  * -s<Left><Left><Left><Left><Left>

" Farp
let g:far#source='ag'
let g:far#file_mask_favorites=['%', '**/*.elm', '**/*.js']

" improve scrolling performance when navigating through large results
set lazyredraw

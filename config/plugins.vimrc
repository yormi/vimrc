" ------- AirLine Status bar thingy -----------
set laststatus=2

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


" ------------ NERDTree ------------------
:nmap <leader>n :NERDTreeToggle<CR>
:nmap <leader>m :NERDTreeFocus<CR>
:nmap <leader>M :NERDTreeMirror<CR>


" --------- camelCaseMotion -------------
" Must define the default mappings first in order to change them.
map <silent> W <Plug>CamelCaseMotion_w
map <silent> B <Plug>CamelCaseMotion_b
map <silent> E <Plug>CamelCaseMotion_e
map <silent> gE <Plug>CamelCaseMotion_ge
sunmap W
sunmap B
sunmap E
sunmap gE


" ----------------- FILE-FINDER -----------------

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --depth 8 -g ""'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/](node_modules|target|dist)$',
      \ 'file': '\v[\/]((~|^.)|\.(swp|png|jpg|jpeg))$',
      \}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Will mean CtrlP will now root itself a directory containing a .ctrlp file
" rather than continuing up the stack to find your .git directory.
let g:ctrlp_root_markers = ['.ctrlp']

nmap <C-b> :CtrlPBuffer<cr>
" Most Recently Used File List
nmap <C-p> :CtrlPMRU<cr>



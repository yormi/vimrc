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


" ------- Vim-Clap ------

"let g:clap_disable_run_rooter = v:true
let g:clap_project_root_marker = ['.root', '.git', '.git/']

nmap <C-p> :Clap files<cr>
nmap <C-b> :Clap buffers<cr>
nmap <C-f> :Clap blines<cr>
nmap <C-g> :Clap grep<cr>
nmap <C-h> :Clap history<cr>

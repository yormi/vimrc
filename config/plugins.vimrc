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

let g:clap_project_root_marker = ['.root', '.git', '.git/']

" To avoid floating window form being restricted to a split window
let g:clap_layout = { 'relative': 'editor' }

nmap <C-p> :Clap files<cr>
nmap <C-b> :Clap buffers<cr>
nmap <C-f> :Clap blines<cr>
nmap <C-g> :Clap grep<cr>
nmap <C-h> :Clap history<cr>

" IMPORTANT... otherwise really annoying
" Make sure there is no remnant of the floating window
" when clicking out of it
function! s:ensure_closed() abort
  call clap#floating_win#close()
  silent! autocmd! ClapEnsureAllClosed
endfunction

function! MyClapOnEnter() abort
  augroup ClapEnsureAllClosed
    autocmd!
    autocmd BufEnter,WinEnter,WinLeave * call s:ensure_closed()
  augroup END
endfunction

autocmd User ClapOnEnter call MyClapOnEnter()

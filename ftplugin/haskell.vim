set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.

let g:hindent_on_save = 0
let g:hindent_indent_size = 4

let g:cabal_indent_section = 2

let $PATH .= (":" . $HOME . "/.local/bin")

nmap <silent> <leader><leader>t :GhcModType<CR>
nmap <silent> <leader><leader>c :GhcModTypeClear<CR>
nmap <silent> <leader><leader>T :GhcModTypeInsert<CR>
nmap <silent> <leader><leader>s :GhcModSplitFunCase<CR>

let g:haskell_classic_highlighting = 1


" highlighting sub-expressions with yellow background
hi ghcmodType ctermbg = darkgrey
let g:ghcmod_type_highlight = 'ghcmodType'


" ------------ ALE ---------
let g:ale_linters.haskell = ['stack-ghc-mod', 'hlint']


" ------------ HOOGLE -------------
" Hoogle the word under the cursor
nnoremap <silent> <leader><leader>h :Hoogle<CR>

" Hoogle and prompt for input
nnoremap <leader><leader>H :Hoogle

" Hoogle for detailed documentation (e.g. "Functor")
nnoremap <silent> <leader><leader>i :HoogleInfo<CR>

" Hoogle for detailed documentation and prompt for input
nnoremap <leader><leader>I :HoogleInfo

" Hoogle, close the Hoogle window
nnoremap <silent> <leader><leader>z :HoogleClose<CR>

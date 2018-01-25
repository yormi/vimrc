set tabstop=2       " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.

let g:hindent_on_save = 0

let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_before_where = 2
let g:haskell_indent_after_bare_where = 2
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_indent_guard = 2
let g:haskell_indent_case_alternative = 1
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

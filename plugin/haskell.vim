
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

nmap <silent> <leader>,t :GhcModType<CR>
nmap <silent> <leader>,c :GhcModTypeClear<CR>
nmap <silent> <leader>,T :GhcModTypeInsert<CR>
nmap <silent> <leader>,s :GhcModSplitFunCase<CR>

let g:haskell_classic_highlighting = 1


" highlighting sub-expressions with yellow background
hi ghcmodType ctermbg = darkgrey
let g:ghcmod_type_highlight = 'ghcmodType'


" Check errors and lint when saving
autocmd BufWritePost *.hs GhcModCheckAndLintAsync

" ------------ SYNTASTIC ---------
" already done by GhcMod
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["haskell"]
    \}


" ------------ HOOGLE -------------
" Hoogle the word under the cursor
nnoremap <silent> <leader>hh :Hoogle<CR>

" Hoogle and prompt for input
nnoremap <leader>hH :Hoogle 

" Hoogle for detailed documentation (e.g. "Functor")
nnoremap <silent> <leader>hi :HoogleInfo<CR>

" Hoogle for detailed documentation and prompt for input
nnoremap <leader>hI :HoogleInfo 

" Hoogle, close the Hoogle window
nnoremap <silent> <leader>hz :HoogleClose<CR>

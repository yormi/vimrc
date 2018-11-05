" use <C-Space> for Vim's keyword autocomplete
"  ...in the terminal
inoremap <Nul> <C-n>
"  ...and in gui mode

" when autocomplete menu visible, CTRL-SPACE go down the suggestions
" inoremap <expr> <C-Space> pumvisible() ? "\<C-n>" : "\<C-x>\<C-o>"
inoremap <C-Space> <C-n>

" when autocomplete menu visible, ENTER apply the selected suggestion
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" when autocomplete menu visible, ESC quit insert mode
inoremap <expr> <ESC> pumvisible() ? "\<ESC>\<ESC>" : "\<ESC>"


"" ----------- Deoplete ------------

let g:deoplete#enable_at_startup = 1
" let g:deoplete#disable_auto_complete = 1

" Close Suggestion box on InsertLeave
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Disable haskell-vim omnifunc
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

" ----------- YOU_COMPLETE_ME -----------
"""" Not used anymore !? Test
"let g:ycm_autoclose_preview_window_after_completion=1

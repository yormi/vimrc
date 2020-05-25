" ---------- LEADER -----------
let mapleader = ","

"" Capitals going too fast problem's OVER !
:command! WA wa
:command! Wa wa
:command! WQ wq
:command! Wq wq
:command! W w
:command! Q q
:command! WW w !sudo tee > /dev/null %


"" ESC on CTRL-j
":imap <C-j> <ESC>
":imap éé <ESC>
":imap jj <ESC>


" allow Tab and Shift+Tab to
" indent selection in visual mode
vmap <Tab> >gv
vmap <S-Tab> <gv


" ---------- SUBSTITUTE WORD -------------
" replace word under cursor for the whole line without confirmation
:nnoremap <Leader>d :s/\<<C-r><C-w>\>//g<Left><Left>
" replace the entered for the whole selection
:vnoremap <Leader>d :s/\%V
" replace word under cursor for the whole file
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
" replace word under cursor for the whole file without confirmation
:nnoremap <Leader>S :%s/\<<C-r><C-w>\>//g<Left><Left>


"" --- WINDOW-BUFFER-TAB controls ---
" Location Window
:nmap <leader>L :ll<CR>
:nmap <leader>lc :lclose<CR>
:nmap <leader>lo :lopen<CR>
:nmap <leader>lp :lprev<CR>
:nmap <leader>ln :lnext<CR>


" QuickFix Window
:nmap <leader>C :cc<CR>
:nmap <leader>cc :ccl<CR>
:nmap <leader>co :cope<CR>
:nmap <leader>cn :cn<CR>
:nmap <leader>cp :cp<CR>


" allow buffer to be hidden even if modified
"set hidden


" Open a new tab
nmap <leader>t :tabnew<cr>


" map <leader>q and <leader>w to buffer prev/next buffer
noremap <leader>q :bp<CR>
noremap <leader>w :bn<CR>


" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>r :bp <BAR> bd #<CR>
nmap <silent> <leader>R :NERDTreeClose<bar>bufdo bd<CR>



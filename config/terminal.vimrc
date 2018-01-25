" Keep terminal from disapearing when changing buffer
set hidden
autocmd TermOpen * set bufhidden=hide

" Go back to normal mode with ESC
tnoremap <Esc> <C-\><C-n>

"Open terminal in current buffer
nmap <C-t> :terminal<CR>

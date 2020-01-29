set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.

nmap <F8> :TagbarToggle<CR>
let g:tagbar_type_elm = {
      \ 'kinds' : [
      \ 'f:function:0:0',
      \ 'm:modules:0:0',
      \ 'i:imports:1:0',
      \ 't:types:1:0',
      \ 'a:type aliases:0:0',
      \ 'c:type constructors:0:0',
      \ 'p:ports:0:0',
      \ 's:functions:0:0',
      \ ]
      \}


" =====> To delete if not used since 2020-01-28

":nnoremap ,,r :ElmRepl<CR>
":nnoremap ,,d :ElmShowDocs<CR>
":nnoremap ,,w :ElmBrowseDocs<CR>
":nnoremap ,,e :ElmErrorDetail<CR>
":nnoremap ,,b :ElmMake<CR>
":nnoremap ,,m :ElmMakeMain<CR>
":nnoremap ,,t :ElmTest<CR>


"let g:elm_jump_to_error = 0
"let g:elm_make_output_file = "elm.js"
"let g:elm_make_show_warnings = 1
"let g:elm_syntastic_show_warnings = 1
"let g:elm_browser_command = ""
"let g:elm_detailed_complete = 1
"let g:elm_format_autosave = 1

set tabstop=4       " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.


:nnoremap ,,r :ElmRepl<CR>
:nnoremap ,,d :ElmShowDocs<CR>
:nnoremap ,,w :ElmBrowseDocs<CR>
:nnoremap ,,e :ElmErrorDetail<CR>
:nnoremap ,,b :ElmMake<CR>
:nnoremap ,,m :ElmMakeMain<CR>
:nnoremap ,,t :ElmTest<CR>


let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 1
let g:elm_syntastic_show_warnings = 1
let g:elm_browser_command = ""
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 1

"" Deoplete
" let g:deoplete#omni#functions = {}
" let g:deoplete#sources = {}
" let g:deoplete#sources._ = ['file', 'neosnippet']
" let g:deoplete#omni#input_patterns = {}

" let g:deoplete#omni#functions.elm = ['elm#Complete']
" let g:deoplete#omni#input_patterns.elm = ['[a-zA-Z]']
" let g:deoplete#sources.elm = ['omni'] + g:deoplete#sources._

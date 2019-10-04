"" Auto-format js files to fit standard linter
"autocmd bufwritepost *.js silent !standard % --format

" --------- SYNTAX ------------
" JavaScript + JSX Syntax
let javascript_enable_domhtmlcss = 1
let g:jsx_ext_required = 0

" JavaScript Libraries
"let g:used_javascript_libs = 'react, flux'


" -------- CONSOLE.LOG -------------
:map ,x <ESC><S-i>', <ESC><S-a>)<ESC><S-i>console.log('
" insert a console.log on a new line before
:nmap ,X <S-o>')<ESC><S-i>console.log('



set tabstop=2       " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.

let g:airline#extensions#ale#enabled = 1
" let g:ale_lint_delay = 400 " ms
highlight clear ALEErrorLine
highlight clear ALEWarningSign
highlight clear ALEError
highlight clear ALEWarningSign
let g:ale_sign_error = '•'
let g:ale_sign_warning = '?'

let g:ale_set_highlights = 0

let g:ale_fixers = { '*': [ 'remove_trailing_lines', 'trim_whitespace' ], 'scala': [ 'scalafmt' ] }
let g:ale_fix_on_save = 1

"" Uncomment
"let g:ale_linters = { 'javascript': [ 'eslint' ] }
"let g:ale_fixers = {'javascript': [ 'eslint' ]}
"let g:ale_javascript_eslint_executables = 'node_modules/.bin/eslint'
"let g:ale_javascript_eslint_options = '--config node_modules/sanctuary-style/eslint-es6.json --env es6 --env node'

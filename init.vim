" .vimrc
" See: http://vimdoc.sourceforge.net/htmldoc/options.html for details

" For multi-byte character support (CJK support, for example): "set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1

"" encoding is utf 8
set encoding=utf-8
set fileencoding=utf-8
"
" ---------- OLD STUFF -------------

"" Capitals going too fast problem's OVER !
:command WA wa
:command Wa wa
:command WQ wq
:command Wq wq
:command W w
:command Q q


set tabstop=2       " Number of spaces that a <Tab> in the file counts for.

set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.

set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.

set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.

set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

"set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.

set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.

set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.

set ignorecase      " Ignore case in search patterns.

set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.

set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.

"set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).

set textwidth=100    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.

set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)

set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.

set mouse=a         " Enable the use of the mouse.

" trailing space/tab
set list
set listchars=tab:›-,trail:۰


" make vim try to detect file types and load plugins for them
filetype on
filetype plugin on

" Autocomplete in Command Bar Menu
set wildmenu

" reload files changed outside vim
set autoread
" Save whenever switching windows or leaving vim. This is useful when running
" the tests inside vim without having to save all files first.
au FocusLost,WinLeave * :silent! wa

" Trigger autoread when changing buffers or coming back to vim.
au FocusGained,BufEnter * :silent! !

" enable matchit plugin which ships with vim and greatly enhances '%'
runtime macros/matchit.vim

" by default, in insert mode backspace won't delete over line breaks, or 
" automatically-inserted indentation, let's change that
set backspace=indent,eol,start

" set unix line endings
set fileformat=unix
" when reading files try unix line endings then dos, also use unix for new
" buffers
set fileformats=unix,dos

" screen will not be redrawn while running macros, registers or other
" non-typed comments
set lazyredraw


" ---------------------- CUSTOMIZATION ----------------------
"  The following are some extra mappings/configs to enhance my personal
"  VIM experience

" windows like clipboard
" yank to and paste from the clipboard without prepending "* to commands
let &clipboard = has('unnamedplus') ? 'unnamedplus' : 'unnamed'
" map c-x and c-v to work as they do in windows, only in insert mode
vm <c-x> "+x
vm <c-c> "+y
cno <c-v> <c-r>+
exe 'ino <script> <C-V>' paste#paste_cmd['i']

" GUI stuff
if has("gui_running")
    "set guioptions-=m  " remove menu bar
    set guioptions-=T  " remove toolbar
    set guioptions-=r  " remove right-hand scroll bar
    set guioptions-=L  " remove left-hand scroll bar

    " GUI is running or is about to start.
    " Maximize gvim window.
    set lines=999 columns=999
end

" remove the .ext~ files, but not the swapfiles
set nobackup
set writebackup
set noswapfile

" On file types...
"   .md files are markdown files
autocmd BufNewFile,BufRead *.md setlocal ft=markdown

" make a mark for column 80
set colorcolumn=80


"---------- MY OLD STUFF ----------

" Color
set background=dark
colorscheme jellybeans

set guifont=Monospace\ 10.5

"--------- INDENT -------------
filetype indent on
set cino+=f1s

"--------- MAPPING -------------

" set , as mapleader
let mapleader = ","

" ESC on CTRL-j
:imap <C-j> <ESC>

" allow Tab and Shift+Tab to
" indent selection in visual mode
vmap <Tab> >gv
vmap <S-Tab> <gv

:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
:nnoremap <Leader>S :%s/\<<C-r><C-w>\>//g<Left><Left>

" console.log the line (see last lines, it messes with the syntax highlighting otherwise !)

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

" allow buffer to be hiden even if modified
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



"--------- PLUGINS -------------

" AirLine Status bar thingy
set laststatus=2

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" NERDTree
:nmap <leader>n :NERDTreeToggle<CR>
:nmap <leader>m :NERDTreeMirror<CR>

" camelCaseMotion
" Must define the default mappings first in order to change them.
map <silent> W <Plug>CamelCaseMotion_w
map <silent> B <Plug>CamelCaseMotion_b
map <silent> E <Plug>CamelCaseMotion_e
map <silent> gE <Plug>CamelCaseMotion_ge
sunmap W
sunmap B
sunmap E
sunmap gE

"" -------------- AUTO-COMPLETE ----------------

" use <C-Space> for Vim's keyword autocomplete
"  ...in the terminal
inoremap <Nul> <C-n>
"  ...and in gui mode

" when autocomplete menu visible, CTRL-SPACE go down the suggestions
inoremap <C-Space> <C-n>

" when autocomplete menu visible, ENTER apply the selected suggestion
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" when autocomplete menu visible, ESC quit insert mode
inoremap <expr> <ESC> pumvisible() ? "\<ESC>\<ESC>" : "\<ESC>"


" ----------------- FILE-FINDER -----------------

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --depth 8 -g ""'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/](node_modules|target|dist)$',
      \ 'file': '\v[\/]((~|^.)|\.(swp|png|jpg|jpeg))$',
      \}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

nmap <C-b> :CtrlPBuffer<cr>
" Most Recently Used File List
nmap <C-p> :CtrlPMRU<cr>


"" ------------- SEARCH ----------------

" search settings
" use ESC to remove search higlight
nnoremap <esc> :noh<return><esc>

" Ag Silver Search
" open ag.vim
nnoremap <leader>a :Ag 

" EasyGrep
let g:EasyGrepMode=2
let g:EasyGrepRecursive=1
let g:EasyGrepIgnoreCase=0
let g:EasyGrepWindow=1
let g:EasyGrepReplaceWindowMode=2 "writeall when open replace window

"" -------------- SYNTAX ---------------

syntax on

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers = ['tidy']
let g:syntastic_html_tidy_exec = '/usr/bin/tidy'
let g:syntastic_javascript_checkers = ['standard']
let g:elm_syntastic_show_warnings = 1

"" Auto-format js files to fit standard linter
"autocmd bufwritepost *.js silent !standard % --format

" JavaScript + JSX Syntax
let javascript_enable_domhtmlcss = 1
let g:jsx_ext_required = 0

" JavaScript Libraries
let g:used_javascript_libs = 'react, flux'

" --------- TAGBAR+JSCTAGS+TERN ---------
nmap <leader>o :TagbarToggle<CR>

" ----------- YOU_COMPLETE_ME -----------
let g:ycm_autoclose_preview_window_after_completion=1

" ---------------- NEOVIM ---------------

" Exit terminal mode
if exists(':tnoremap')
  tnoremap <leader>e <C-\><C-n> 
endif

" ------------- SCREW_UP :P --------------
" console.log the line (see last lines, it messes with the syntax highlighting otherwise !)
:map ,x <ESC><S-i>', <ESC><S-a>)<ESC><S-i>console.log('
" insert a console.log on a new line before
:nmap ,X <S-o>')<ESC><S-i>console.log('


" --------------- ELM ---------------
let g:elm_format_autosave = 1
:nnoremap ,,r :ElmRepl<CR>
:nnoremap ,,d :ElmShowDocs<CR>
:nnoremap ,,w :ElmBrowseDocs<CR>
:nnoremap ,,e :ElmErrorDetail<CR>
:nnoremap ,,b :ElmMake<CR>
:nnoremap ,,m :ElmMakeMain<CR>
:nnoremap ,,t :ElmTest<CR>

" Compile 'Main.elm' on save
:au BufWritePost *.elm ElmMake

" --------------- VIM-PLUG ---------------
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'rking/ag.vim'
Plug 'kien/ctrlp.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'skammer/vim-css-color'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'vim-airline/vim-airline-themes'
Plug 'bkad/CamelCaseMotion'
Plug 'elmcast/elm-vim'
" Plug 'lambdatoast/elm.vim'
" Plug 'Valloric/YouCompleteMe'
" Plug 'majutsushi/tagbar'
" Plug 'ternjs/tern_for_vim'
" Plug 'ramitos/jsctags'
call plug#end()

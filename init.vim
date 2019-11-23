"" -------------- CONFIG FILES ----------------

source $HOME/.config/nvim/config/auto-complete.vimrc
source $HOME/.config/nvim/config/copy-paste.vimrc
source $HOME/.config/nvim/config/filetype.vimrc
source $HOME/.config/nvim/config/general.vimrc
source $HOME/.config/nvim/config/indent.vimrc
source $HOME/.config/nvim/config/linting.vimrc
source $HOME/.config/nvim/config/mapping.vimrc
source $HOME/.config/nvim/config/plugins.vimrc
source $HOME/.config/nvim/config/search.vimrc
source $HOME/.config/nvim/config/syntax.vimrc
source $HOME/.config/nvim/config/temp-file.vimrc
source $HOME/.config/nvim/config/terminal.vimrc
source $HOME/.config/nvim/config/theme.vimrc
source $HOME/.config/nvim/config/visual-aid.vimrc

" ---------------- BUG FIX ------------
" neovim-qt
if @% == ""
  bd
endif


" ---------------- NEOVIM ---------------
" Exit terminal mode
if exists(':tnoremap')
  tnoremap <leader>e <C-\><C-n>
endif

" --------------- VIM-PLUG ---------------
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'rking/ag.vim'
Plug 'brooth/far.vim'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'

" Colorscheme
Plug 'morhetz/gruvbox'

Plug 'w0rp/ale'
let g:ale_completion_enabled = 1

Plug 'vim-airline/vim-airline-themes'
Plug 'bkad/CamelCaseMotion'
Plug 'bronson/vim-trailing-whitespace'

" Auto-complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Elm
" Plug 'pbogut/deoplete-elm'
Plug 'Zaptic/elm-vim'

" Haskell
Plug 'itchyny/vim-haskell-indent', { 'for': 'haskell' }
Plug 'mpickering/hlint-refactor-vim', { 'for': 'haskell' }
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Twinside/vim-hoogle', { 'for': 'haskell' }
Plug 'alx741/vim-hindent', { 'for': 'haskell' }
Plug 'hspec/hspec.vim', { 'for': 'haskell' }

" Python
Plug 'nvie/vim-flake8' " python pep8 + syntax checker
Plug 'Vimjas/vim-python-pep8-indent'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'othree/javascript-libraries-syntax.vim'

call plug#end()

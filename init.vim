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
Plug 'vim-airline/vim-airline-themes'

" Search & Navigate
Plug 'rking/ag.vim'
Plug 'brooth/far.vim'
Plug 'liuchengxu/vim-clap', { 'branch': 'project-root-marker', 'do': ':Clap install-binary' }
Plug 'scrooloose/nerdtree'
" Replace by vim-clap !? 2020-01-29
"Plug 'kien/ctrlp.vim'

" Colorscheme
"Plug 'morhetz/gruvbox'

"" Replaced by Coc !? 2020-01-29
"Plug 'w0rp/ale'

Plug 'bkad/CamelCaseMotion'
Plug 'bronson/vim-trailing-whitespace'

" Language Server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_node_path = '/home/guillaume/.nvm/versions/node/v13.5.0/bin/node'
" Installed directly using coc
"Plug 'scalameta/coc-metals', {'do': 'yarn install --frozen-lockfile'}

" Elm
Plug 'andys8/vim-elm-syntax', { 'for': 'elm' }
Plug 'majutsushi/tagbar', { 'for': 'elm' }

" Scala
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }

" Haskell
Plug 'sdiehl/vim-ormolu', { 'for': 'haskell' }
Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }
Plug 'Twinside/vim-hoogle', { 'for': 'haskell' }
" Old
"Plug 'itchyny/vim-haskell-indent', { 'for': 'haskell' }
"Plug 'mpickering/hlint-refactor-vim', { 'for': 'haskell' }
"Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
"Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
"Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
"Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"Plug 'alx741/vim-hindent', { 'for': 'haskell' }
"Plug 'hspec/hspec.vim', { 'for': 'haskell' }

" Javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }

call plug#end()

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

" Last version of far.vim was hanging
Plug 'brooth/far.vim', { 'commit': '4888a06d42508566bc8a7c74b0220d9a7628c5f6' }

Plug 'liuchengxu/vim-clap', { 'branch': 'project-root-marker', 'do': ':Clap install-binary' }
Plug 'scrooloose/nerdtree'

" Colorscheme
"Plug 'morhetz/gruvbox'

Plug 'bkad/CamelCaseMotion'
Plug 'bronson/vim-trailing-whitespace'

" Language Server
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', { 'tag': 'v0.0.78' }

" Scala
Plug 'derekwyatt/vim-scala', { 'for': 'scala' }

" Haskell
Plug 'ndmitchell/ghcid', { 'rtp': 'plugins/nvim' }
Plug 'Twinside/vim-hoogle', { 'for': 'haskell' }

" Javascript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }

call plug#end()

execute pathogen#infect()
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
call plug#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plug 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plug)
Plug 'vim-python/python-syntax' " plugin for detect well syntax in python file
Plug 'tweekmonster/impsort.vim'
"Pluggin for the different themes colorscheme
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'Ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized' 

Plug 'terryma/vim-multiple-cursors' " plugin to add the multiple cursor function
Plug 'tmhedberg/SimpylFold' " plugin for well-folding
Plug 'vim-scripts/indentpython.vim' " plugin for well-indentation

"Plug 'ncm2/ncm2' " plugin for auto-completion in python
"Plug 'roxma/nvim-yarp' " (yet another remote plugin) replace UpdateRemotePlugin (useful for ncm2)

" Pluggin for snippets construction (use C-k)
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'}
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'


"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdcommenter' " Code commenter
Plug 'nvie/vim-flake8' " check if the code is in PEP8
Plug 'ctrlpvim/ctrlp.vim'


" Use Vim as a programmer's text editor
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'xolox/vim-misc'
Plug 'xolox/vim-easytags'

" ----- Working with Git ----------------------------------------------
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" ----- Other text editing features -----------------------------------
Plug 'Raimondi/delimitMate'

" ---- shortcut for navigating between multiple files
Plug 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
"call vundle#end()            " required
call plug#end()


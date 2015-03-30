set number
set tabstop=4
set shiftwidth=4
set expandtab
set backupdir=~/tmp                 "Vim's backup dir
set directory=~/tmp                 "Vim's temp dir all your .swp files are saved here 
set nocompatible               		"disable vi compatibility
syntax on
filetype off                   		"required for Vundle to work

set rtp+=~/.vim/bundle/Vundle.vim 	"set the runtime path to include Vundle and initialize
call vundle#begin()
	"To install vundle see : https://github.com/gmarik/Vundle.vim
	" let Vundle manage Vundle, required
	Plugin 'gmarik/Vundle.vim'

	" To see examples of different formats supported : https://github.com/gmarik/Vundle.vim
	" Keep Plugin commands between vundle#begin/end.
	" plugin on GitHub repo
	Plugin 'rstacruz/sparkup'		"Write HTML Code faster
	Plugin 'tpope/vim-surround'		"Quickly surround stuff in your code
	Plugin 'tpope/vim-commentary'		"Quick commentary
	"------------------Start vim-snipmate dependencies--------------------
        Plugin 'MarcWeber/vim-addon-mw-utils'
        Plugin 'tomtom/tlib_vim'
	"------------------End vim-snipmate dependencies--------------------
	Plugin 'garbas/vim-snipmate'		"Snippets
        Plugin 'honza/vim-snippets'             "vim-snipmate addon to add support for multiple filetypes
	"------------------Start of vim color schemes-------------------------
	Plugin 'mtglsk/mushroom'         	"vim colour schemes
	Plugin 'wesQ3/wombat.vim'         	"vim colour schemes
	Plugin 'stulzer/heroku-colorscheme'     "vim colour schemes
	"------------------End of vim color schemes-------------------------
	Plugin 'Raimondi/delimitMate'		"autocompletion of quotes, parens etc.
	Plugin 'vim-scripts/c.vim'		"features to add some conveniences in vim to program C/C++


call vundle#end()            	
filetype plugin indent on    		"required turn on after Vundle work is done
let g:netrw_liststyle=3			"Make vim file explorer behave like nerdtree
colorscheme heroku-terminal


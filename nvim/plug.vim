if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
  let g:black_fast = 1
  let g:black_linelength=90
  autocmd BufWritePre *.py Black
endif

call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-surround'

if has("nvim")
  Plug 'neovim/nvim-lspconfig'

  " let g:python3_host_prog = $HOST . '/Users/ghoshk1/anaconda3/bin/python'
  " Plug 'averms/black-nvim', {'do': ':UpdateRemotePlugins'}

  Plug 'psf/black', {'branch': 'stable'}
  Plug 'tami5/lspsaga.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  " Vsnip
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'

  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'onsails/lspkind-nvim'
  Plug 'kyazdani42/nvim-web-devicons'

  Plug 'nvim-lualine/lualine.nvim'
  Plug 'chipsenkbeil/distant.nvim'

  " Colorscheme
  Plug 'shaunsingh/nord.nvim'
  Plug 'folke/tokyonight.nvim'
endif

call plug#end()

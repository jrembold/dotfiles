"-------------------------------------------------------------------------------
" Basic Sets
"-------------------------------------------------------------------------------

" Tabbing
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
" Numbering
set number
set relativenumber
set signcolumn
" Searching
set nohlsearch
" Swaps and Histories
set noswapfile
" Cosmetic
set termguicolors
set scrolloff=8
set completeopt=menuone,preview,noinsert,noselect
"set colorcolumn=80
" Mouse support
set mouse=a
" Share Clipboard with X middle click
set clipboard=unnamed
" Splitting in more reasonable places
set splitbelow
set splitright
" Give a bit more breathing room at bottom
set cmdheight=2
" Improving response time
set updatetime=50

" Changing the leader key
let mapleader = " "

" Autodownloading and setting up Vim-Plug if it is missing
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"-------------------------------------------------------------------------------
" Plugins (with Vim-Plug)
"-------------------------------------------------------------------------------
call plug#begin('~/.config/nvim/plugged')
" Telescope functionality
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Better highlighting
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'sheerun/vim-polyglot'

" LSP Integration
Plug 'neovim/nvim-lspconfig'
Plug 'kabouzeid/nvim-lspinstall'

" Autocompletion
Plug 'hrsh7th/nvim-compe'

" Better status bar
Plug 'hoob3rt/lualine.nvim'

" Nicer icons
Plug 'kyazdani42/nvim-web-devicons'

" File tree browser
Plug 'kyazdani42/nvim-tree.lua'

" Bufferline tabs on top
Plug 'akinsho/nvim-bufferline.lua'

" Nicer commenting
Plug 'preservim/nerdcommenter'

" Improving Python
Plug 'tmhedberg/SimpylFold'

" Git Integration
Plug 'tpope/vim-fugitive'

" LaTeX Support
Plug 'lervag/vimtex'

" Color Schemes
Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim'



call plug#end()



"-------------------------------------------------------------------------------
" Coloring and Syntax
"-------------------------------------------------------------------------------
syntax on
colorscheme tokyonight
" For transparent background, uncomment below
"highlight Normal guibg=none


"-------------------------------------------------------------------------------
" Plugin Configurations
"-------------------------------------------------------------------------------
luafile ~/.config/nvim/plug_conf/nvim-lspinstall.lua
source ~/.config/nvim/plug_conf/nvim-lspconfig.vim
luafile ~/.config/nvim/plug_conf/nvim-compe.lua
source ~/.config/nvim/plug_conf/nvim-compe-keybinds.vim
luafile ~/.config/nvim/plug_conf/lualine.lua
source ~/.config/nvim/plug_conf/telescope.vim
source ~/.config/nvim/plug_conf/nvim-tree.vim
luafile ~/.config/nvim/plug_conf/nvim-bufferline.lua
source ~/.config/nvim/plug_conf/simpylfold-config.vim
source ~/.config/nvim/plug_conf/vimtex.vim


"-------------------------------------------------------------------------------
" General Autocommands
"-------------------------------------------------------------------------------
autocmd Filetype python set colorcolumn=80
autocmd BufWritePost *note-*.md silent !buildNote %:p
autocmd BufRead,BufNewFile *.pg set filetype=pg

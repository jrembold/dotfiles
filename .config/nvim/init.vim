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
set completeopt=menu,menuone,noinsert,noselect,preview
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
Plug 'glepnir/lspsaga.nvim'
Plug 'ray-x/lsp_signature.nvim'

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
"Plug 'tmhedberg/SimpylFold'

" Git Integration
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

" LaTeX Support
Plug 'lervag/vimtex'

" Color Schemes
Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim'
Plug 'mhartington/oceanic-next'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'

" Highlight CSS Colors
Plug 'norcalli/nvim-colorizer.lua'

" Snippets!
Plug 'SirVer/ultisnips'



call plug#end()


"-------------------------------------------------------------------------------
" Coloring and Syntax
"-------------------------------------------------------------------------------
syntax on
set background=dark
let g:gruvbox_material_background = "hard"
let g:gruvbox_material_enable_italic = 1
let g:gruvbox_material_disable_italic_comment = 1
let g:everforest_background = "hard"
let g:everforest_enable_italic = 1
let g:everforest_disable_italic_comment = 1
let g:everforest_diagnostic_text_highlight = 0
let g:everforest_transparent_background = 0
colorscheme everforest
" For transparent background, uncomment below
"highlight Normal guibg=none


"-------------------------------------------------------------------------------
" Plugin Configurations
"-------------------------------------------------------------------------------
luafile ~/.config/nvim/plug_conf/nvim-lspinstall.lua
luafile ~/.config/nvim/plug_conf/nvim-lspconfig.lua
luafile ~/.config/nvim/plug_conf/nvim-compe.lua
source ~/.config/nvim/plug_conf/nvim-compe-keybinds.vim
luafile ~/.config/nvim/plug_conf/lualine.lua
luafile ~/.config/nvim/plug_conf/treesitter.lua
source ~/.config/nvim/plug_conf/telescope.vim
source ~/.config/nvim/plug_conf/nvim-tree.vim
luafile ~/.config/nvim/plug_conf/nvim-bufferline.lua
"source ~/.config/nvim/plug_conf/simpylfold-config.vim
source ~/.config/nvim/plug_conf/vimtex.vim
source ~/.config/nvim/plug_conf/ultisnips.vim
luafile ~/.config/nvim/plug_conf/lsp_signatures.lua
luafile ~/.config/nvim/plug_conf/gitsigns.lua

"-------------------------------------------------------------------------------
" Using Treesitter for folding
"-------------------------------------------------------------------------------
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

"-------------------------------------------------------------------------------
" Keymaps
"-------------------------------------------------------------------------------
" Better switching between buffer tabs using tab and shift-tab
nnoremap <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
nnoremap <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>
" Better LSP keybinds
source ~/.config/nvim/lsp_keybinds.vim

"-------------------------------------------------------------------------------
" General Autocommands
"-------------------------------------------------------------------------------
" Setting the max column size in Python
autocmd Filetype python set colorcolumn=88
" Setting auto-build for notes
autocmd BufWritePost *note-*.md silent !buildNote %:p
" Setting filetype for WebWorK problems
autocmd BufRead,BufNewFile *.pg set filetype=pg


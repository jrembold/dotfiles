"======================================================================
"Basic Settings
"======================================================================
"vim extended mode
set nocompatible
"setting filetype off while loading plugins
filetype off


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'								"NerdTree
Plugin 'https://github.com/majutsushi/tagbar'					"Tagbar
"Plugin 'https://github.com/vim-latex/vim-latex' 				"Latex-Suite
Plugin 'https://github.com/freeo/vim-kalisi'					"Kalisi color scheme
Plugin 'https://github.com/altercation/vim-colors-solarized'	"Solarized Color Scheme
Plugin 'https://github.com/xolox/vim-easytags'					"EasyTags
Plugin 'https://github.com/xolox/vim-misc'						"Needed for EasyTags
Plugin 'Colorizer--Brabandt'									"Highlight Colortags
Plugin 'https://github.com/scrooloose/nerdcommenter'			"Easier Commenting
Plugin 'https://github.com/docunext/closetag.vim'				"Autoclose HTML tags
Plugin 'tmhedberg/SimpylFold'									"Python Folding
Plugin 'https://github.com/godlygeek/tabular'					"Pretty LaTex Tables
Plugin 'tpope/vim-fugitive'										"Git Integration
Plugin 'vim-airline/vim-airline'								"Airline Statusbar
Plugin 'vim-airline/vim-airline-themes'							"Airline themes
Plugin 'https://github.com/lervag/vimtex'						"VimTex
Plugin 'https://github.com/SirVer/ultisnips'					"Ultisnips
Plugin 'nvie/vim-flake8'										"Python Pep8 Checker

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"enable hybrid line numbers
set number
set relativenumber
"enable mouse compatibility
set mouse=a
"command history length
set history=1000
"autoindent
set autoindent
"number of spaces for autoindentization
set shiftwidth=4
"number of spaces for tab
set tabstop=4
"make backspace work normally
set backspace=indent,eol,start
"max tab number
set tabpagemax=15
"Set 256 color support
set t_Co=256
"statusline
set laststatus=2
"statusline: filepath, filetype, mod ,rw, help, preview,
set statusline=%f\ %y\ %m%r%h%w
"statusline: separation between left and right aligned item
set statusline+=%=
"statusline: lines number, column number, percent
set statusline+=[L:\ %l/%L]\ [C:\ %v]\ [%p%%]
"set all but toolbar
set guioptions=aegimrLt
"Setting colorscheme
colorscheme solarized
set background=dark
"enable syntax highlights
syntax on
"highlight cursorline
set cursorline
highlight CursorLineNr ctermfg=red cterm=bold
"airline configs
let g:airline_solarized_bg='dark'
let g:solarized_termcolors=256
let g:airline_powerline_fonts = 1

"Activate syntax highlighting for octave files
augroup filetypedetect
	au! BufRead,BufNewFile *.m,*.oct set filetype=octave
augroup END


"enabling and mapping spell checking
map <F2> :setlocal spell! spelllang=en_us<CR>
nmap <F8> :TagbarToggle <CR>
nmap <F9> :NERDTreeToggle <CR>

" Vim Tex Settings
let g:vimtex_view_method = 'zathura'
" Disable Overfull/Underfull hbox warnings
let g:vimtex_quickfix_latexlog = {'overfull':0, 'underfull':0}
" Default to .tex files as tex filetype
let g:tex_flavor='latex'
" Adding Shell Escaping
let g:vimtex_latexmk_options = '-pdf -shell-escape -verbose -file-line-error -synctex=1 -interaction=nonstopmode'

" Clean up files upon exit
augroup vimtex_config
	autocmd!
	autocmd Filetype tex autocmd BufUnload <buffer> VimtexClean
"	autocmd User VimtexEventQuit call vimtex#latexmk#clean(0)
augroup END

" Ultisnips Settings
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsEditSplit='horizontal'



""=======================================================================
""Vim-LaTeX Settings
""=======================================================================

"" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
"filetype plugin on

"" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
"" can be called correctly.
"set shellslash

"" IMPORTANT: grep will sometimes skip displaying the file name if you
"" search in a singe file. This will confuse Latex-Suite. Set your grep
"" program to always generate a file-name.
"set grepprg=grep\ -nH\ $*

"" OPTIONAL: This enables automatic indentation as you type.
"filetype indent on

"" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
"" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
"" The following changes the default filetype back to 'tex':
"let g:tex_flavor='latex'

"======================================================================
"Autocmd Settings
"======================================================================
"autocmd bufnewfile *.py so /home/jedediah/.vim/templates/py_header.txt
"autocmd bufnewfile *.py exe "1," . 10 . "g/File Name:.*/s//File Name: " .expand("%")
"autocmd bufnewfile *.py exe "1," . 10 . "g/Creation Date:.*/s//Creation Date: " .strftime("%d-%m-%Y")
"autocmd Bufwritepre,filewritepre *.py execute "normal ma"
"autocmd Bufwritepre,filewritepre *.py exe "1," . 10 . "g/Last Modified:.*/s/Last Modified: .*/Last Modified: " .strftime("%c")
"autocmd bufwritepost,filewritepost *.py execute "normal `a"

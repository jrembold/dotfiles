" Zathura as default viewer
let g:vimtex_view_method = "zathura"
" Disable Overfull/Underfull hbox warnings
let g:vimtex_quickfix_ignore_filters = ["Overfull", "Underfull"]
" Default to reading .tex files as the full latex filetype
let g:tex_flavor = "latex"
" Compiler options with shell escape
let g:vimtex_compiler_latexmk = {
	\ 'build_dir' : '',
	\ 'callback' : 1,
	\ 'continuous' : 1,
	\ 'executable' : 'latexmk',
	\ 'hooks' : [],
	\ 'options': [
	\		'-pdf',
	\		'-shell-escape',
	\		'-verbose',
	\		'-file-line-error',
	\		'-synctex=1',
	\		'-interaction=nonstopmode'
		\ ],
	\ }

" Cleanup files on exit
augroup vimtex_config
	autocmd!
	autocmd Filetype tex autocmd BufUnload <buffer> VimtexClean
augroup END

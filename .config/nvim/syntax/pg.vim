" Vim syntax file
" Language: PG and PGML WebWorK Problems
" Maintainer: Jed Rembold
" Latest Revision: 11 Jan 2019

if exists("b:current_syntax")
	finish
endif

" -- Numbers --
" Regular int like number with - + or nothing in front
syn match Number '\d\+' 
syn match Number '[-+]\d\+'

" Floating point number with decimal no E or e (+,-)
syn match Number '\d\+\.\d*' 
syn match Number '[-+]\d\+\.\d*'

" Floating point like number with E and no decimal point (+,-)
syn match Number '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+'
syn match Number '\d[[:digit:]]*[eE][\-+]\=\d\+'

" Floating point like number with E and decimal point (+,-)
syn match Number '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'
syn match Number '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

" Comments
syn match Comment "#.*$"

" Variable
syn match Var "\$\w\+" 

" String
syn region String start='"' end='"'

" WebWorK Keywords
syn keyword WWWords Context Compute Real PopUp

" Perl Keywords
syn keyword PerlWords random while if else

" Starting and Ending
syn match Borders "ENDDOCUMENT.*$"
syn match Borders "DOCUMENT.*$"

" PGML
syn keyword PGMLBorders BEGIN_PGML END_PGML BEGIN_PGML_HINT END_PGML_HINT contained
syn region PGML start="BEGIN_PGML" end="END_PGML" fold transparent contains=Headline,PGMLBorders, PGMLVar, InsertVar, InsertCode
syn region InsertVar start="\[" end="\]" contained contains=PGMLVar, PGMLLatex
syn match Headline "#.*$" contained
syn match PGMLVar "\$\w\+" contained
syn region PGMLLatex start="`" end="`" contained
syn region InsertCode start="\[@" end="@\]" contained contains=PGMLVar

" PG TEXT
syn keyword PGBorders BEGIN_TEXT END_TEXT BEGIN_HINT END_HINT contained
syn region PG start="BEGIN_TEXT" end="END_TEXT" fold transparent contains=PGBorders, Headline, InsertCode, PGCommands, PGMLVar
syn region Headline start="<h3>" end="</h3>" contained
syn match PGMLVar "/$/w/+" contained
syn region InsertCode start="\\{" end="\\}" contained contains=PGMLVar



" -- Setup --
let b:current_syntax = 'pg'

highlight link Number			Constant
highlight link Comment			Comment
highlight link Var				Identifier
highlight link PGMLVar			Identifier
highlight link Headline			Operator
highlight link PGMLBorders		Define
highlight link String			String
highlight link WWWords			Title
highlight link PerlWords		Type
highlight link InsertVar		Todo
highlight link PGMLLatex		String
highlight link InsertCode		Function
highlight link Borders			SpellRare

highlight link PGBorders		Define

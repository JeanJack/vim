highlight clear
if exists("syntax_on")
  syntax reset
endif

set background=dark
let g:colors_name="couleurs"

function! Cterm(group, ...)
	let histring = 'hi ' . a:group . ' '

	if strlen(a:1)
		let histring .= 'ctermbg=' . a:1 . ' '
	endif

	if strlen(a:2)
		let histring .= 'ctermfg=' . a:2 . ' '
	endif

	if a:0 >= 3 && strlen(a:3)
		let histring .= 'cterm=' . a:3 . ' '
	endif

	execute histring
endfunction


call Cterm("Normal","none", "231", "none")
call Cterm("Comment","none", "248", "none")
call Cterm("Constant","none", "220", "none")
call Cterm("Boolean","none", "4", "bold")
call Cterm("String","none", "214", "none")
call Cterm("Character","none", "215", "none")
call Cterm("Number","none", "197", "none")
call Cterm("Float","none", "197", "none")
call Cterm("Identifier","none", "14", "bold")
call Cterm("Function","none", "208", "none")
call Cterm("Statement","none", "226", "none")
call Cterm("Conditional","none", "124", "bold")
call Cterm("Repeat","none", "124", "bold")
call Cterm("Label","none", "161", "none")
call Cterm("Operator","none", "214", "none")
call Cterm("Keyword","none", "47", "bold")
call Cterm("Exception","none", "161", "bold")
call Cterm("PreProc","none", "32", "none")
call Cterm("Include","none", "38", "none")
call Cterm("Define","none", "44", "none") "PHP echo & function
call Cterm("PhpStruct","none", "6", "none") "PHP class & extends, ...
call Cterm("Macro","none", "78", "none")
call Cterm("PreCondit","none", "78", "none")
call Cterm("Type","none", "50", "bold")
call Cterm("StorageClass","none", "51", "bold")
call Cterm("Structure","none", "120", "bold")
call Cterm("Typedef","none", "121", "bold")
call Cterm("Special","none", "9", "none")
call Cterm("SpecialChar","none", "216", "none")
call Cterm("Tag","none", "9", "none")
call Cterm("Delimiter","none", "216", "none")
call Cterm("SpecialComment","none", "9", "none")
call Cterm("Debug","none", "9", "none")
call Cterm("Underlined","none", "9", "none")
call Cterm("Error","235", "9", "none")
call Cterm("Todo","none", "9", "none")

call Cterm("Instructions","none", "208", "none")
call Cterm("Registres","none", "229", "none")
call Cterm("Etiquettes","236", "1", "bold")
call Cterm("Segments","235", "98", "bold")
call Cterm("RetCallInt","none", "214", "bold")
call Cterm("ASMString","none", "42", "none")

call Cterm("ColorColumn","none", "9", "none")
call Cterm("Conceal","none", "9", "none")
call Cterm("Cursor","none", "9", "none")
call Cterm("CursorIM","none", "9", "none")
call Cterm("CursorColumn","none", "9", "none")
call Cterm("CursorLine","none", "9", "none")
call Cterm("Directory","none", "9", "none")
call Cterm("DiffAdd","none", "9", "none")

call Cterm("Libft","none", "130", "bold")

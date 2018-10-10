
augroup filetype_vim
autocmd!
augroup END



syntax on
filetype on

function Hascolorscheme(name)
	let pat = 'colors/'.a:name.'.vim'
	return !empty(globpath(&rtp, pat))
endfunction

if Hascolorscheme('couleurs')
	colorscheme couleurs
endif

set noswapfile
set number

set tabstop=4
set shiftwidth=4
set softtabstop=4






set mouse=a
set mousemodel=popup_setpos
set matchtime=2
set nohlsearch


let maplocalleader = " "

nnoremap <localleader>ev :split $MYVIMRC<cr>
nnoremap <localleader>sv :source $MYVIMRC<cr>

nnoremap <localleader>p "+p
nnoremap <localleader>y "+yy

inoremap <c-u> <esc>ui
inoremap <c-r> <esc>Ri
inoremap <c-w> <esc>:w!<cr>
inoremap <c-q> <esc>:q!<cr>
inoremap <c-x> <esc>:x!<cr>
inoremap <c-h> <esc>ddkPi
inoremap <c-b> <esc>ddpi
inoremap <c-o>o <esc>o
inoremap <c-o>O <esc>O
inoremap <c-v> <esc>v
inoremap ::e \e[;m<esc>hi
inoremap ( ()<left>
inoremap { {<cr>}
inoremap " ""<left>
inoremap ' ''<left>
inoremap [ []<left>
inoremap < <><left>


function! s:insert_gates()
	let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
	execute "normal! i#ifndef " . gatename
	execute "normal! o# define " . gatename . "\n\n\n"
	execute "normal! Go#endif"
	normal! kk
endfunction
autocmd BufNewFile *.{h,hpp} call <SID>insert_gates()
autocmd BufNewFile *.{h,hpp,c,cpp} :Stdheader
autocmd FileType c setlocal comments=s0:/*,m:**,ex:*/,://


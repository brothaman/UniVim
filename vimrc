
set number
set cursorline
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn=join(range(81,999),",")
set textwidth=80
set backspace=indent,eol,start
set ts=2
set tabstop=2
set shiftwidth=2
set history=50
set ruler

if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
endif


set number

" convifure status line
set statusline=%f%m%r%h\ [%L]\ [%{&ff}]\ %y%=[%p%%]\ [line:%05l,col:%02v]
set laststatus=2
" Configure tabbing - using PEP8 style
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Set cursor crosshairs
set cursorline
set cursorcolumn

" Highlight all spaces past column 80
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="".join(range(80,999),",")

if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
endif


" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=80

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

set backspace=indent,eol,start
set tabstop=2      " To match the sample file
set shiftwidth=2
set noexpandtab    " Use tabs, not spaces
%retab!            " Retabulate the whole file
set history=50
set ruler


" ===================================================================
" ====						   	DEFAULT VIMRC BELOW THIS LINE              ====
" ===================================================================
" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1

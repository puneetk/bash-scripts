if &compatible
 set nocompatible
endif
filetype plugin indent on
set fileformat=unix confirm history=10000
set background=dark nowrap scrolloff=2 nonumber
set showmatch showmode showcmd ruler title wildmenu
set wildignore=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn
set laststatus=2 matchtime=2 hidden esckeys
set ignorecase smartcase magic
set smartindent smarttab
set bs=indent,eol,start
set tabstop=4 shiftwidth=4 expandtab foldmethod=indent
set lazyredraw nobackup

if &t_Co > 2 || has("gui_running")
 syntax on
 set hlsearch
 set incsearch
endif
set pastetoggle=<F11>
if has("autocmd")
 augroup mysettings
   au FileType xslt,xml,css,html,xhtml,javascript,sh,config,c,cpp,docbook set smartindent shiftwidth=2 softtabstop=2 expandtab
   au FileType tex set wrap shiftwidth=2 softtabstop=2 expandtab
   au FileType python,php set tabstop=4 softtabstop=4 expandtab shiftwidth=4 cinwords=if,elif,else,for,while,try,except,def,class
 augroup END
endif " has("autocmd")

autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") |   exe "normal g`\"" |  endif
execute pathogen#infect()

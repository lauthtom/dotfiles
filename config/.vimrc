filetype plugin indent on
syntax on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set autoindent 
set number
set hlsearch
set incsearch
set ruler
colorscheme ron

set title

" set the red line 
set colorcolumn=80
hi ColoColumn ctermbg=red guibg=red

" use the mouse and resize their window
if has('mouse')
  set mouse=a
endif
set ttymouse=sgr

"disable bold fonts in vim
set t_md=

"map some useful commands
:command WQ wq
:command Wq wq
:command W w
:command Q q

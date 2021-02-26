filetype plugin indent on
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent 
set number
set hlsearch
set incsearch
set ruler
colorscheme peachpuff
highlight Comment ctermfg=green

" set the red line 
set colorcolumn=100
hi ColoColumn ctermbg=red guibg=red

" use the mouse and resize their window
if has('mouse')
  set mouse=a
endif
set ttymouse=sgr

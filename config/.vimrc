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
set nowrap
set autoread
set smartindent
set noswapfile
set nobackup
set nowritebackup
set splitbelow
set splitright
set scrolloff=5	 " Scroll vertically before hitting the edges of the window
set sidescrolloff=10 " Scroll horizontally before hitting the edges of the window
set ignorecase		 " Make search case-insensitive by default

set title

colorscheme default
highlight Comment ctermfg=green
" set background=dark

" set the red line
" set colorcolumn=80
" hi ColoColumn ctermbg=red guibg=red

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

nnoremap <C-o> :Hexplore<CR>

" set listchars=trail:␣
" highlight ExtraWhitespace ctermbg=red guibg=red
" match ExtraWhitespace /\s\+$\| \+\ze\t/

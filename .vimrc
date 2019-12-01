set mouse=a
set number
set wildmenu
set showmode
set showcmd
set ruler
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set backspace=2
set cursorline
set colorcolumn=80
set incsearch
set hlsearch
set ignorecase
set smartcase

nnoremap <Leader><Esc> :noh<Enter>

if filereadable(glob('~/.vim/autoload/plug.vim'))
  call plug#begin()
  Plug 'altercation/vim-colors-solarized'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  call plug#end()
endif

if filereadable(glob('~/.vim/plugged/vim-colors-solarized/colors/solarized.vim'))
  colorscheme solarized
endif

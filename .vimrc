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
set incsearch
set hlsearch

syntax enable

nnoremap <Leader><Esc> :noh<Enter>

if filereadable(glob('~/.vim/autoload/plug.vim'))
  call plug#begin()
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  call plug#end()
endif

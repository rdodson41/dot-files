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

if filereadable(glob('~/.vimrc.d/plug.vim'))
  source ~/.vimrc.d/plug.vim
endif

if filereadable(glob('~/.vimrc.d/colorscheme.vim'))
  source ~/.vimrc.d/colorscheme.vim
endif

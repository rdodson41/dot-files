if filereadable(glob('~/.vim/autoload/plug.vim'))
  call plug#begin()
  Plug 'altercation/vim-colors-solarized'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  call plug#end()
endif

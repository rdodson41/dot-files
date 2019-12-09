if filereadable(glob('~/.vim/autoload/plug.vim'))
  call plug#begin()
  Plug 'altercation/vim-colors-solarized'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'shumphrey/fugitive-gitlab.vim'
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-rhubarb'
  call plug#end()
endif

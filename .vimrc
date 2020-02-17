set mouse=a
set clipboard=unnamed
set number
set wildmenu
set showcmd
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set backspace=2
set cursorline
set colorcolumn=81
set incsearch
set hlsearch
set ignorecase
set smartcase
set runtimepath+=/usr/local/lib/python3.7/site-packages/powerline/bindings/vim

nnoremap <Leader><Esc> :nohlsearch<Enter>

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

if filereadable(glob('~/.vim/plugged/vim-colors-solarized/colors/solarized.vim'))
  colorscheme solarized
endif

autocmd VimEnter * call s:initialize_powerline()

function s:initialize_powerline()
  if exists('g:powerline_loaded')
    set laststatus=2
    set noshowmode
  else
    set ruler
  endif
endfunction

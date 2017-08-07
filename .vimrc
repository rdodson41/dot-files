set ttimeoutlen=0
set updatetime=0

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set backspace=2

set scrolloff=8
set title
set cursorline
set number
set showmode
set showcmd
set ruler

set splitbelow
set splitright

set incsearch
set hlsearch
set wildmenu

set clipboard=unnamed

syntax enable
set t_Co=16
set background=dark
colorscheme solarized

nnoremap j gj
nnoremap k gk
nnoremap <up> g<up>
nnoremap <down> g<down>

map <Leader>! :VimuxPromptCommand<Enter>

if filereadable(glob('~/.vim/autoload/plug.vim'))
  call plug#begin()
  Plug 'airblade/vim-gitgutter'
  Plug 'benmills/vimux'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'powerline/fonts', { 'do': './install.sh' }
  Plug 'powerline/powerline', { 'rtp': 'powerline/bindings/vim' }
  Plug 'tpope/vim-fugitive'
  call plug#end()
endif

autocmd VimEnter * call s:initialize_powerline()
autocmd VimEnter * call s:initialize_vim_better_whitespace()

function s:initialize_powerline()
  if exists('g:powerline_loaded')
    set laststatus=2
    set noshowmode
    set noruler
  endif
endfunction

function s:initialize_vim_better_whitespace()
  if exists('g:loaded_better_whitespace_plugin')
    autocmd BufWritePre * StripWhitespace
  endif
endfunction

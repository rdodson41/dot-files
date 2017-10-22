set ttimeoutlen=0
set mouse=a

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
set colorcolumn=81
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

nnoremap <Leader>F :Files<Enter>
nnoremap <Leader>B :Buffers<Enter>
nnoremap <Leader>A :Ag<Enter>
nnoremap <Leader>L :Lines<Enter>
nnoremap <Leader>W :Windows<Enter>
nnoremap <Leader>! :VimuxPromptCommand<Enter>

nnoremap <Leader>q vi":s/"\%V\([^"]*\)"/'\1'/<Enter>:noh<Enter><C-O>
nnoremap <Leader>Q vi':s/'\%V\([^']*\)'/"\1"/<Enter>:noh<Enter><C-O>
nnoremap <Leader>s viw:s/['"]\%V\(\w\+\)['"]/:\1/<Enter>:noh<Enter><C-O>
nnoremap <Leader>S viw:s/:\%V\(\w\+\)/'\1'/<Enter>:noh<Enter><C-O>
nnoremap <Leader>h viw:s/['"]\%V\(\w\+\)['"]\s*=>\s*\\|:\%V\(\w\+\)\s*=>\s*/\1\2: /<Enter>:noh<Enter><C-O>
nnoremap <Leader>H viw:s/\%V\(\w\+\):\s*/'\1' => /<Enter>:noh<Enter><C-O>

if filereadable(glob('~/.vim/autoload/plug.vim'))
  call plug#begin()
  Plug 'airblade/vim-gitgutter'
  Plug 'benmills/vimux'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'junegunn/fzf'
  Plug 'junegunn/fzf.vim'
  Plug 'ntpeters/vim-better-whitespace'
  Plug 'powerline/fonts', { 'do': './install.sh' }
  Plug 'powerline/powerline', { 'rtp': 'powerline/bindings/vim' }
  Plug 'tpope/vim-endwise'
  Plug 'tpope/vim-fugitive'
  Plug 'vim-ruby/vim-ruby'
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

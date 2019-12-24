set rtp+=/usr/local/lib/python3.7/site-packages/powerline/bindings/vim

autocmd VimEnter * call s:initialize_powerline()

function s:initialize_powerline()
  if exists('g:powerline_loaded')
    set laststatus=2
    set noshowmode
  endif
endfunction

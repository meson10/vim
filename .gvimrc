if has("gui_macvim")
  set guifont=Source\ Code\ Pro:h12
  set guioptions=aAce
  set fuoptions=maxvert,maxhorz
  set noballooneval
  silent! colorscheme molokai

  " Automatically resize splits
  " when resizing MacVim window
  autocmd VimResized * wincmd =
elseif has("gui_gtk2")
  set guioptions-=T
  silent! colorscheme slate
endif

if has("gui_macvim")
  set guifont=PT\ Mono:h12
  set guioptions=aAce
  set fuoptions=maxvert,maxhorz
  set noballooneval
  set columns=300
  silent! colorscheme hybrid

  " Automatically resize splits
  " when resizing MacVim window
  autocmd VimResized * wincmd =
  macmenu File.New\ Tab key=<nop>
  macmenu File.Save key=<nop>
  macmenu File.Save\ All key=<nop>
  macmenu File.Save\ As\.\.\. key=<nop>
elseif has("gui_gtk3")
  set guioptions-=T
  set guifont=Noto\ Mono\ Regular\ 11
  silent! colorscheme slate2
endif

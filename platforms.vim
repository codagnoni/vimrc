" ----------------------------------------
" Platform Specific Configuration
" ----------------------------------------


if has('gui_macvim')
  " MacVim

  " Custom Source Code font for Powerline
  " From: https://github.com/Lokaltog/powerline-fonts
  set guifont=Source\ Code\ Pro\ for\ Powerline:h12

  " Hide Toolbar in MacVim
  if has('gui_running')
    set guioptions=egmrt
  endif

  " Use option (alt) as meta key.
  set macmeta
endif

if has('macunix') || has('mac')
  " Fix meta key for Mac
  let c='a'
  while c <= 'z'
    exec "set <A-".c.">=\e".c
    exec "imap \e".c." <A-".c.">"
    let c = nr2char(1+char2nr(c))
  endw
endif

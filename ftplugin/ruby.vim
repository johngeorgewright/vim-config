" Line character limit
if exists('+colorcolumn')
  autocmd FileType ruby set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif


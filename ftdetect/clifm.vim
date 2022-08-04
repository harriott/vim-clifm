
" Maintainer: Joseph Harriott
" Last Change: Thu 04 Aug 2022
" supplemental to  $VIMRUNTIME/filetype.vim

autocmd! BufRead,BufNewFile *.clifm setfiletype clifm

" for CliFM < v1.6.1
if exists('g:detect_cfm_as_clifm')
  autocmd! BufRead,BufNewFile *.cfm setfiletype clifm
  " - overrides  $VIMRUNTIME/filetype.vim  & activates  $vimfiles/syntax/clifm.vim
endif


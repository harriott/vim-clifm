
" Vim syntax file

" Language:	clifm - configuration files for CliFM
" Maintainer: Joseph Harriott
" Last Change: Sat 27 Aug 2022

" also  $vimfiles/pack/packs-cp/opt/vim-clifm/ftplugin/clifm.vim

if exists('b:current_syntax') | finish | endif

syntax region comment start=/^#/ end=/$/
hi def link comment Comment

" created for  $ARCHBUILDS/jo/CliFM/keybindings.clifm
syn match settingNameColon '^[!0-9a-zA-Z-]\+:' nextgroup=setting
syn match setting '.\+$' contained
hi def link setting DiffAdd

" extra for  $ARCHBUILDS/jo/CliFM/mimelist.clifm
syn match Fallback '^\..\+'
hi def link Fallback DiffAdd

" for  ~/.config/clifm/profiles/default/actions.clifm
syn match customCommandNameToEquals '^[+/0-9a-zA-Z-\*_]\+\ze=' nextgroup=Equals
hi def link customCommandNameToEquals Number
syn match Equals '=' contained nextgroup=customCommand
hi def link Equals LineNr
syn match customCommand '.\+$' contained
hi def link customCommand vimCommand

let b:current_syntax = "clifm"


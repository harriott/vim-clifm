
" Vim syntax file

" Language:	clifm - configuration files for CliFM
" Maintainer: Joseph Harriott
" Last Change: Wed 03 Aug 2022

" also  $vimfiles/ftplugin/clifm.vim

if exists('b:current_syntax') | finish | endif

syn match settingNameColon '^[!0-9a-zA-Z-]\+:' nextgroup=setting
syn match setting '.\+$' contained
hi def link setting DiffAdd

syn match Fallback '^\..\+'
hi def link Fallback DiffAdd

syntax region comment start=/^#/ end=/$/
hi def link comment Comment

let b:current_syntax = "clifm"


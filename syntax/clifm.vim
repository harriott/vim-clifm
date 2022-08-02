
" Vim syntax file

" Language:	clifm - configuration files for CliFM
" Maintainer: Joseph Harriott
" Last Change: Tue 02 Aug 2022

" also  $vimfiles/ftplugin/clifm.vim

if exists('b:current_syntax') | finish | endif

syn match CliFMsettingNameColon '^[!-0-9a-zA-Z]\+:' nextgroup=CliFMsetting
syn match CliFMsetting '.\+$' contained
syn match Fallback '^\..\+'
hi def link CliFMsetting DiffAdd
hi def link Fallback DiffAdd

syntax region comment start=/^#/ end=/$/
hi def link comment Folded

let b:current_syntax = "clifm"


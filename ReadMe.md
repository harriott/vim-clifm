vim: se fdl=3:

Maintainer: [harriott](https://github.com/harriott).

# vim-clifm
Beginnings of a filetype plugin for [CliFM](https://github.com/leo-arch/clifm) configuration files.

When I use `vim` to look at configuration files, I like them to be at least nicely syntax highlighted, so I've created this tiny plugin to get things going, defining `vim` filetype `clifm`.

## installation
I install this in `pack/.../opt/`, then `packadd vim-clifm` somewhere in my `vimrc`.

(You can also just place the `ftplugin` & `syntax` files individually.)

### The NERD Commenter
If you're using scrooloose's `nerdcommenter`, include this in your `vimrc`,
```vim
let g:NERDCustomDelimiters = { 'clifm': { 'left': '#' }, }
```

## before CliFM v1.6.1
Note: from `CliFM v1.6.1` upwards you can ignore this part.

### filetype detection fix
Configuration files were `*.cfm`, which is detected in [filetype.vim](https://github.com/vim/vim/blob/master/runtime/filetype.vim) as filetype `cf`, managed by [cf.vim](https://github.com/vim/vim/blob/master/runtime/syntax/cf.vim) (for [ColdFusion Markup Language](http://en.wikipedia.org/wiki/ColdFusion_Markup_Language)), which you wouldn't want.

So if you're still at this version of `CliFM`, you can, in your `vimrc`,
```vim
let g:detect_cfm_as_clifm = 1
````
which overrides `filetype.vim`, setting filetype `clifm` for configuration files named `*.cfm`.


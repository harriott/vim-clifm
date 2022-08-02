vim: se fdl=1:

Maintainer: Joseph Harriott
Last Change: Tue 02 Aug 2022

# vim-clifm
filetype plugin for CliFM
Beginnings of a filetype plugin for [CliFM](https://github.com/leo-arch/clifm) configuration files.

When I use `vim` to look at configuration files, I like them to be at least nicely syntax highlighted. I've just begun to play with the excellent `CliFM`, and discovered that it uses configuration files named `*.cfm` which are detected in `vim` as `ColdFusion` filetypes (which they are not). So I opened an issue with `leo-arch` requesting him to change those configurations to `*.clifm`, which is unknown to `vim`. Of course (s)he may have no desire to do so. Meanwhile, to make my `CliFM` configuration files more readable, I've created this tiny plugin.

I install this in `pack/.../opt/`, then `packadd vim-clifm`.


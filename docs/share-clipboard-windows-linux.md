# Share clipboard between Windows and Linux

As we are targeting the Vim installation on WSL2, an important step for better productivity is making sure that clipboards can be shared between Windows and Linux. To do that, we'll create a Vim script that invokes the [clip](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/clip) service on Windows to redirect the output of the `yank` task to Windows clipboard.

Add the following block in your `.vimrc` file:

```vim
" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
```

Boom! 🔥 



# Share clipboard between Windows and Linux

As we are targeting the Vim installation on WSL2, an important step for better productivity is making sure that clipboards can be shared between Windows and Linux. In other words, we'll create a `yank` support for WSL2.

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



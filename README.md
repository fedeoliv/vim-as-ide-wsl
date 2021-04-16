# Vim as IDE on Windows Subsystem for Linux (WSL2)

This repository contains information about how to install and configure Vim on WSL2, as well as my personal preferences of plugins that I use daily.

## Installing Vim

Install Vim with the clipboard feature enabled:

```sh
apt-get install vim-gtk
```

Validate if the clipboard feature was successfully installed along with Vim:

```sh
vim --version | grep clipboard
```

## Create the vimrc file

Create the `~/.vimrc` file and add the following line:

```vim
set nocompatible
```

The *nocompatble* option turns off the *Compatible mode* (e.g. compatibility with the old *vi*), opening the doors for Vim customizations.

> Assuming this file will be a system-wide vimrc, setting the *nocompatible* option is required. It needs to be set before all other options.

## Install Vundle

If you already have a ~/.vim folder, move it out of the way:

```sh
mv ~/.vim ~/.vim.old
```

Then install Vundle:

```sh
git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/Vundle.vim
```

## Sharing clipboard between Windows and Linux

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

## Preparing Vim as an IDE

* [Write and Preview Markdown files](./docs/markdown.md)

# Install Vim on Windows Subsystem for Linux (WSL2)

Although the default Ubuntu installation bundles a minimal version of Vim, it is not ideal to be used as an IDE due the lack of rich features such as syntax highlighting and sidebars.

If you already have the full version of Vim installed, great! Just make sure it has the clipboard feature enabled before the next steps:

```sh
vim --version | grep clipboard
```

Otherwise, you can run the installation script located on the `scripts` folder to install the full version of Vim (v8.2.2773) with clipboard enabled:

```sh
./install-vim.sh
```

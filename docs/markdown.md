# Write and Preview Markdown files

## Markdown Preview

### Installing a Markdown Renderer

In order to preview your Markdown files inside Vim, you have to choose and install a tool that has the capability of rendering Markdown files on the Linux terminal. There are some options out there such as:

* [mdr](https://github.com/MichaelMure/mdr)
* [glow](https://github.com/charmbracelet/glow)
* [mdcat](https://github.com/lunaryorn/mdcat)

My personal preference is **glow** due to its color scheme and how it renders lists and tables, being visually better for me. Go to the [Release](https://github.com/charmbracelet/glow/releases), get the link of the latest version and download it:

```sh
wget -c https://github.com/charmbracelet/glow/releases/download/v<VERSION>/glow_<VERSION>_linux_arm64.tar.gz
```

Extract the zip file and move it to `/usr/local/bin`:

```sh
tar -xzf glow_<VERSION>_linux_arm64.tar.gz -C /usr/local/bin/
```

Then remove the zip file:

```sh
rm glow_<VERSION>_linux_arm64.tar.gz
```




#!/bin/bash

VIM_VERSION=${VIM_VERSION:-"8.2.2773"}
VIM_SOURCE_CODE=https://github.com/vim/vim/archive/v${VIM_VERSION}.tar.gz
WORKDIR=~/vim-install

# Install dependencies
sudo apt-get update
sudo apt-get install -y build-essential libncurses5-dev python-dev python3-dev xorg-dev

# Download Vim
mkdir -p ${WORKDIR}/vim
wget -qO- ${VIM_SOURCE_CODE} | tar xz --strip-components=1 -C ${WORKDIR}/vim

# Install Vim with clipboard enabled
pushd .
cd ${WORKDIR}/vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-python3interp=yes \
            --enable-gui \
            --with-x \
            --enable-cscope \
            --prefix=/usr/local

make VIMRUNTIMEDIR=/usr/local/share/vim/vim82
sudo make distclean  # if you build Vim before
sudo make install
popd

# Clean all
rm -rf ${WORKDIR}

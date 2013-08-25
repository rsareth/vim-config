#!/bin/bash

echo "Installing the pathogen plugin ..."
mkdir -p "${HOME}"/.vim/autoload ~/.vim/bundle && \
curl -Sso "${HOME}"/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo "Downloading the colorscheme wombat256mod ..."
mkdir -p "${HOME}"/.vim/colors && \
curl -Sso "${HOME}"/.vim/colors/wombat256mod.vim \
    http://www.vim.org/scripts/download_script.php?src_id=13400

echo "Downloading the plugins ..."
mkdir -p "${HOME}"/.vim/bundle

cd "${HOME}"/.vim/bundle
echo "  -> NERDTree"
git clone -q https://github.com/scrooloose/nerdtree.git
echo "  -> python-mode"
git clone -q git://github.com/klen/python-mode.git
echo "  -> vim-ruby"
git clone -q git://github.com/vim-ruby/vim-ruby.git
echo "  -> vim-scala"
git clone -q https://github.com/derekwyatt/vim-scala.git
echo "  -> jshint2"
git clone -q https://github.com/Shutnik/jshint2.vim.git
echo "  -> emmet"
git clone -q https://github.com/mattn/emmet-vim.git
echo "  -> vundle"
git clone -q https://github.com/gmarik/vundle.git
echo "  -> vim-powerline"
git clone -q https://github.com/Lokaltog/vim-powerline.git
echo "  -> vim-fugitive"
git clone -q git://github.com/tpope/vim-fugitive.git
echo "  -> vim-scriptease"
git clone -q https://github.com/tpope/vim-scriptease.git
echo "  -> vim-sensible"
git clone -q git://github.com/tpope/vim-sensible.git
echo "  -> vim-surround"
git clone -q git://github.com/tpope/vim-surround.git
echo "  -> vim-repeat"
git clone -q git://github.com/tpope/vim-repeat.git

echo "Copying the vimrc file ..."
cd -
mv "${HOME}"/.vimrc "${HOME}"/vimrc_backup
cp vimrc "${HOME}"/.vimrc

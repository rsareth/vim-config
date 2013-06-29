#!/bin/bash

echo "Installing the pathogen plugin ..."
mkdir -p "${HOME}"/.vim/autoload ~/.vim/bundle && \
curl -Sso "${HOME}"/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo "Downloading the colorscheme wombat256mod ..."
mkdir -p "${HOME}"/.vim/colors && \
curl -Sso "${HOME}"/.vim/colors/wombat256mob.vim \
    http://www.vim.org/scripts/download_script.php?src_id=13400

echo "Downloading the plugins ..."
mkdir -p "${HOME}"/.vim/bundle

cd "${HOME}"/.vim/bundle
echo "  -> NERDTree"
git clone https://github.com/scrooloose/nerdtree.git 1>/dev/null
echo "  -> python-mode"
git clone git://github.com/klen/python-mode.git 1>/dev/null
echo "  -> vim-fugitive"
git clone git://github.com/tpope/vim-fugitive.git 1>/dev/null
echo "  -> vim-powerline"
git clone https://github.com/Lokaltog/vim-powerline.git 1>/dev/null
echo "  -> vim-ruby"
git clone git://github.com/vim-ruby/vim-ruby.git 1>/dev/null
echo "  -> vim-scala"
git clone https://github.com/derekwyatt/vim-scala.git 1>/dev/null
echo "  -> vim-scriptease"
git clone https://github.com/tpope/vim-scriptease.git 1>/dev/null
echo "  -> vim-sensible"
git clone git://github.com/tpope/vim-sensible.git 1>/dev/null

echo "Copying the vimrc file ..."
cd -
mv "${HOME}"/.vimrc "${HOME}"/vimrc_backup
cp vimrc "${HOME}"/.vimrc

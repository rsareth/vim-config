#!/bin/bash

echo "Downloading the plugins ..."
if ! test -d "${HOME}"/.vim/bundle
then
  mkdir -p "${HOME}"/.vim/bundle
fi

cd "${HOME}"/.vim/bundle
echo "  -> NERDTree"
git clone https://github.com/scrooloose/nerdtree.git
echo "  -> python-mode"
git clone git://github.com/klen/python-mode.git
echo "  -> vim-fugitive"
git clone git://github.com/tpope/vim-fugitive.git
echo "  -> vim-powerline"
git clone https://github.com/Lokaltog/vim-powerline.git
echo "  -> vim-ruby"
git clone git://github.com/vim-ruby/vim-ruby.git
echo "  -> vim-scala"
git clone https://github.com/derekwyatt/vim-scala.git
echo "  -> vim-scriptease"
git clone https://github.com/tpope/vim-scriptease.git
echo "  -> vim-sensible"
git clone git://github.com/tpope/vim-sensible.git

echo "Copying the vimrc file ..."
mv "${HOME}"/.vimrc "${HOME}"/vimrc_backup
cp vimrc "${HOME}"/.vimrc

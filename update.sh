#!/bin/bash

set -e

echo "Updating all VIM's plugins ..."
cd ${HOME}/.vim/bundle

for i in $(ls)
do
  if test -d $i
  then
    echo -n " -> $i ..."
    cd $i 1>/dev/null
    git pull -q
    cd - 1>/dev/null
    echo " done"
  fi
done

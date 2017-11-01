#!/bin/bash

# -- Colors ------------------------------
# Black        0;30     Dark Gray     1;30
# Red          0;31     Light Red     1;31
# Green        0;32     Light Green   1;32
# Brown/Orange 0;33     Yellow        1;33
# Blue         0;34     Light Blue    1;34
# Purple       0;35     Light Purple  1;35
# Cyan         0;36     Light Cyan    1;36
# Light Gray   0;37     White         1;37

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

compare_files ()
{
  dif=$(diff $1 $2)
  if [ -z "$dif" ]; then
    res="${GREEN}OK${NC}"
  else
    res="${RED}KO${NC}\n$dif"
    #res="${RED}KO${NC}"
  fi

  echo -e "$1 $res"
}

check_files()
{
  compare_files ./.aliases ~/.aliases
  compare_files ./.bash_profile ~/.bash_profile
  compare_files ./.bash_prompt ~/.bash_prompt
  compare_files ./.bashrc ~/.bashrc
  compare_files ./.functions ~/.functions
  compare_files ./.screenrc ~/.screenrc
  compare_files ./git/.gitconfig ~/.gitconfig
  compare_files ./git/.gitexcludes ~/.gitexcludes
  compare_files ./git/.gitignore ~/.gitignore
  compare_files ./git/.gitignore_global ~/.gitignore_global
  compare_files ./vim/.vimrc ~/.vim/.vimrc
  compare_files ./vim/.gvimrc ~/.vim/.gvimrc
}

clear
echo "Comparing configuration files on $HOSTNAME..."
check_files

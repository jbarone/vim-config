@echo off
git submodule init
git submodule update
mklink ..\_vimrc _vimrc

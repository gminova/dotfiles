# dotfiles

## VIM Set up with Vundle (Ubuntu)
![vim](https://github.com/gminova/dotfiles/blob/master/vim.png?raw=true)
#### Pre-reqs: Must have Git
### Get Vim
```
$ sudo apt-get remove vim-tiny
$ sudo apt-get update
$ sudo apt-get install vim
$ vim --version
```
### Get Vundle
```
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
### Create vim profile
```
$ touch ~/.vimrc
```
### Open .vimrc and paste .vimrc settings
```
$ vi .vimrc
```
### Install Plugins
```
$ vi
:PluginInstall
```


## vim and system clipboard
1. install vim-gtk3 package:
```bash
sudo apt-get install vim-gtk3
```
You can access the clipboard via register +,
so when you want to copy something (ie visual selection) "+y will 'yank' it to the clipboard.
Similarly if you want to paste "+p should paste from clipboard to vim.

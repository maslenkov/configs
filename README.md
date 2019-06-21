My configs for zsh and sublime text 3

# vim

install vundle
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
install basic color scheme
```
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
```
link config
```
ln -s PATH_TO/configs/vim/.vimrc ~/.vimrc
```
run vim and run command `VundleInstall` to install other plugins

# zsh

copy config
```
ln -s PATH_TO/configs/zsh/.zshrc ~/.zshrc
```

# zsh robbyrussell multyline
```
ln -s PATH_TO/configs/zsh/robbyrussell_custom.zsh-theme ~/.oh-my-zsh/themes/robbyrussell_custom.zsh-theme
```

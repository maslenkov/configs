My configs for zsh and sublime text 3

## vim

link config
```
ln -s PATH_TO/configs/vim/.vimrc ~/.vimrc
```

### requirements

* install vundle
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
* install basic color scheme
```
git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
```
* install [fzf](https://github.com/junegunn/fzf#using-git)
* install [ag](https://github.com/ggreer/the_silver_searcher#installing)
* run vim and run command `VundleInstall` to install other plugins
* if `Ag` doesn't work - make sure that [fzf-pluging](https://github.com/junegunn/fzf#installation)
installed correctly (it has different instructions for setup through homebrew and direct installation from git)

## zsh

### requirements

* oh-my-zsh
* [fzf](https://github.com/junegunn/fzf#using-git)
* custom robbyrussell multyline theme

copy config
```
ln -s PATH_TO/configs/zsh/.zshrc ~/.zshrc
```

## zsh robbyrussell multyline

```
ln -s PATH_TO/configs/zsh/robbyrussell_custom.zsh-theme ~/.oh-my-zsh/themes/robbyrussell_custom.zsh-theme
```

## git

```
ln -s PATH_TO/configs/git/.gitconfig ~/.gitconfig
ln -s PATH_TO/configs/git/.global-gitignore ~/.gitignore
```

## sublime

```
ln -s PATH_TO/configs/sublime-text-3/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
```

### requirements

ayu theme (install it through Package Controll)

.vimrc file examples for different langueages

# Ruby

Run 'brew install' repeatedly with following packages/formulae.
```
$ brew install rbenv
$ brew install cscope
$ brew install fzf
$ brew install --HEAD universal-ctags/universal-ctags/universal-ctags

```

In *~/.bash_profile*, have this this line at the end.
```
$ tail -n 1 ~/.bash_profile
eval "$(rbenv init -)"
```

Run *gem install* under the *rbenv init* shell.
```
$ gem install bundler starscope
```

Use *Starscope* to generate indics, and ctags for gem sources; wrap them in a script
```
$ starscope
$ starscope -e ctags
$ starscope -e cscope
$ ctags --exclude=.git --exclude='*.log' -R * `bundle show --paths | grep --color=none '^/'`
```

The *cscope* command requires the presense of cscope.files
```
$ find . -type f -name '*.rb' > cscope.files
```

After you copy or symlink to your *~/.vimrc*, install the vim package manager *Vundle*.
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

First time in *vim*, run this vim command for package installations, and re-launch *vim*.
```
:PluginInstall
```

# VIM everything

Brew-install vim with **--enable-gui=yes**
```
$ brew edit vim
# find option enable-gui and enable it
$ brew reinstall vim
```

## Profile start time
```
$ vim --startuptime vim.log
```

## Profile command(s)
```
:profile start output.log
:profile func *
:profile file *
:profile pause
```

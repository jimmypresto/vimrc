.vimrc file examples for different langueages

# Ruby

Run 'brew install' repeatedly with following packages/formulae.
```
$ brew install rbenv
$ brew install cscope
$ brew install fzf
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

Using starscope for cscope/ctags, as a verb, on your .rb search
```
$ startscope -e ctags
$ startscope -e cscope
$ export CSCOPE_DB=/full/path/to/your/generated/cscope.out
```

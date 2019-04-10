#!/bin/bash

starscope --verbose --summary
#starscope -e ctags
starscope -e cscope

# Install universal-ctags first:
#  $ brew install --HEAD universal-ctags/universal-ctags/universal-ctags
ctags --exclude=.git --exclude='*.log' --language-force=ruby -R . `bundle show --paths | grep --color=none '^/'`

export CSCOPE_DB=`pwd`/cscope.out

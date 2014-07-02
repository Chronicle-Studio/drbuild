#!/bin/bash

# Get the current directory
DIR="$( cd "$(dirname "$0" )" && pwd )"

# Link files in bin
[ -d "${HOME}/bin" ] || mkdir "${HOME}/bin"
for file in ${DIR}/bin/*; do
    [ -x $file ] || continue
    [[ $(uname) == 'Linux' && $(basename $file) == 'reattach-to-user-namespace' ]] && continue
    ln -fs $file "${HOME}/bin/$(basename $file)"
done

# Link files in .bash_completion.d
[ -d "${HOME}/.bash_completion.d" ] || mkdir "${HOME}/.bash_completion.d"
for file in ${DIR}/.bash_completion.d/*; do
    [ -x $file ] || continue
    [[ $(uname) == 'Linux' && $(basename $file) == 'reattach-to-user-namespace' ]] && continue
    ln -fs $file "${HOME}/.bash_completion.d/$(basename $file)"
done


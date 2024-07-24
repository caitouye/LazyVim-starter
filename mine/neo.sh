#!/bin/sh
#--------------------------------
BasePath=$(dirname $(readlink -f ${BASH_SOURCE:-$0}))
#--------------------------------
# python 3
#source "$HOME/.pyenv/pyenv-win/versions/nvim/scripts/activate"
#--------------------------------

if [ -z "$1" ]; then
    echo "Need args: branch_no [create,fvim]"
    exit 1
fi

Branch=$1
echo "branch: $Branch"

Config="$BasePath/neovim$Branch"
export XDG_CONFIG_HOME="$Config/XDG_CONFIG_HOME"
export XDG_DATA_HOME="$Config/XDG_DATA_HOME"
export XDG_STATE_HOME="$Config/XDG_STATE_HOME"
export XDG_CACHE_HOME="$Config/XDG_CACHE_HOME"

if [ "$2" == "create" ]; then
    echo "create branch dir: $Branch"
    mkdir "$Config"
    mkdir "$XDG_CONFIG_HOME"
    mkdir "$XDG_DATA_HOME"
    mkdir "$XDG_STATE_HOME"
    mkdir "$XDG_CACHE_HOME"
    echo "branch dir created: $Config"
    exit 0
fi

nvim
exit 0


Neovim="$BasePath/nvim$Branch/bin/nvim.exe"
if [ ! -f "$Neovim" ]; then
    Neovim="$BasePath/nvim1/bin/nvim.exe"
fi
Terminal="$BasePath/neovide$Branch/neovide.exe"
if [ ! -f "$Terminal" ]; then
    Terminal="$BasePath/neovide1/neovide.exe"
fi
Option="--neovim-bin"
if [ "$2" == "fvim" ]; then
    Terminal="$BasePath/fvim$Branch/FVim.exe"
    if [ ! -f "$Terminal" ]; then
        Terminal="$BasePath/fvim1/FVim.exe"
    fi
    Option="--nvim"
fi

"$Terminal" "$Option" "$Neovim"

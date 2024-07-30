#!/bin/sh
#--------------------------------
BasePath=$(dirname $(readlink -f ${BASH_SOURCE:-$0}))
#--------------------------------
# python 3
. "${BasePath}/pynvim/bin/activate"
#--------------------------------

if [ -z "$1" ]; then
    echo "Need args: branch_no [create, server, client]"
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


Port=50001

if [ "$2" == "server" ]; then
	shift 2
	nvim --headless --listen 127.0.0.1:$Port "$@"
	exit 0
fi

if [ "$2" == "client" ]; then
	shift 2
	nvim --remote-ui --server localhost:$Port "$@"
	exit 0
fi


shift 1
nvim "$@"



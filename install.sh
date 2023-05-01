#!/bin/bash

function myln() {
    from="$1"
    to="$2"

    to_parent="$(dirname "${to}")"
    if [ ! -d "${to_parent}" ]; then
        mkdir -p "${to_parent}"
    fi

    if [ ! -f "${to}" ] && [ ! -d "${to}" ]; then
        ln -fns "${from}" "${to}"
    fi
}

base="$(cd "$(dirname "$0")"; pwd)"

myln "${base}/dotfiles/.gitconfig" ~/.gitconfig

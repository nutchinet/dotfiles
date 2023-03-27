#!/bin/bash

function myln () {
    from="$1"
    to="$2"
    if [ ! -f "${to}" ] && [ ! -d "${to}" ]; then
        ln -fns "${from}" "${to}"
    fi
}

base="$(cd "$(dirname "$0")"; pwd)"

myln "${base}/.gitconfig" ~/.gitconfig

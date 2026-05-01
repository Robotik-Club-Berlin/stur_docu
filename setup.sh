#!/bin/bash
docu_dirname=$(dirname "$(realpath "$0")")
cd $docu_dirname
if [ ! -d ".obsidian" ]; then
    cp -r .obsidian.template .obsidian
    echo "Setup abgeschlossen."
else
    echo ".obsidian existiert bereits."
fi
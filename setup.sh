#!/bin/bash
if [ ! -d ".obsidian" ]; then
    cp -r .obsidian.template .obsidian
    echo "Setup abgeschlossen."
else
    echo ".obsidian existiert bereits."
fi
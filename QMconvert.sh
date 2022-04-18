#!/bin/bash
# A.D. 2022-04-17 - juniorjpdj (Jacek Pruciak Junior), kaktus (Jacek Pruciak)
# 		QM file converter for FreeCAD translators
# This script was written for the international community engaged in the work of translating and improving FreeCAD GUI translations
# In the first version, this work was done by a long command with pipelined processing. However when more people of different nationalities started to use this solution modifying the command could be cumbersome.
# Therefore, this all-purpose versatile bash script was created to solve several inconveniences, at the same time as it recognizes the language of the source files.
echo
echo -e 'Source file(s) to be converted:'
LS_COLORS='*.ts=01;32' ls -1 -C --color=always *.ts

# define target directory
od="$HOME/.local/share/FreeCAD/translations/"
echo #new line
echo -e Target directory is: '\e[1;31m'"$od" '\e[0m\n'
mkdir -p "$od"

for f in *.ts ; do
    nf="$(sed 's/\.ts//' <<< "$f")"
    lang="$(grep language= "$f")"
    [[ $lang =~ language=.([a-z]*?). ]] && lang=${BASH_REMATCH[1]} || lang=''
    [[ -z "$lang" ]] && echo -e '\e[1;31m'Unable to detect language for '\e[32m'"$f"'\e[31m', skipping!'\e[0m\n' && continue
    nf="${nf^}_$lang.qm"
    lrelease "$f" -qm "$nf"
    echo -e Moving '\e[1;32m'"$nf"'\e[0m' to target directory.'\n'
    mv "$nf" "$od"
    rm "$f"
done

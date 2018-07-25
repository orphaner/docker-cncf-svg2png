#!/usr/bin/env bash


git clone https://github.com/cncf/landscape.git

function convert_dir() {
    dir=$1
    mkdir /png/${dir}
    cd /cncf/landscape/${dir}
    for svg in *
    do
        filename=${svg%.*}
        inkscape -z -e /png/${dir}/${filename}.png /cncf/landscape/${dir}/${svg}
     done
}

convert_dir hosted_logos
convert_dir cached_logos

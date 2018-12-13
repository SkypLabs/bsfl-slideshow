#!/usr/bin/env sh

DIR=$(cd "$(dirname "$0")" && pwd)

install_asciinema_player() {
    cp "${DIR}"/../node_modules/asciinema-player/resources/public/js/*.js js
    cp "${DIR}"/../node_modules/asciinema-player/resources/public/css/*.css css
}

install_revealjs() {
    for dir in css js lib plugin; do
        cp -r "${DIR}"/../node_modules/reveal.js/${dir}/* ${dir}
    done
}

install_asciinema_player
install_revealjs

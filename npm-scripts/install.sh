#!/usr/bin/env sh

ROOT=$(cd "$(dirname "$0")" && pwd)

install_asciinema_player() {
  for dir in css js; do
    mkdir -p ${dir}
    rm -rf ${dir}/*
    cp "${ROOT}"/../node_modules/asciinema-player/resources/public/${dir}/* ${dir}
  done
}

install_revealjs() {
  for dir in dist plugin; do
    mkdir -p ${dir}
    rm -rf ${dir}/*
    cp -r "${ROOT}"/../node_modules/reveal.js/${dir}/* ${dir}
  done
}

install_asciinema_player
install_revealjs

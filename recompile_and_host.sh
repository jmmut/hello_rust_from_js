#!/bin/bash

# Before running this script, you'll need to:
# - add the WebAssembly target in the rust compiler:
#   rustup target add wasm32-unknown-unknown
# - install the local web server:
#   cargo install basic-http-server
# see the readme.md for more info

cargo build -r --target wasm32-unknown-unknown
mkdir -p built_html
# the folder export_html contains the html wrapper so that the wasm can be used
cp -r export_html/* built_html/
cp -r target/wasm32-unknown-unknown/release/*.wasm built_html/

basic-http-server built_html/

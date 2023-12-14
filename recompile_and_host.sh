#!/bin/bash

cargo build -r --target wasm32-unknown-unknown
mkdir -p built_html
# the folder export_html contains the html wrapper so that the wasm can be used
cp -r export_html/* built_html/
cp -r target/wasm32-unknown-unknown/release/*.wasm built_html/

basic-http-server built_html/

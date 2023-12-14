# hello-rust-from-js

This project is an experiment calling Rust code from JavaScript.

## Running this project

Try it out in https://jmmut.itch.io/hello-rust-from-js.

## Running locally

You can look at the [github actions](.github/workflows/release.yml) where I build the WebAssembly binary
for itch.io, but here are the steps if you want to run them manually:

First, clone this repo, and [install rust](https://www.rust-lang.org/tools/install).
Then add the WebAssembly target for the compiler. You only need to do this once:
```
rustup target add wasm32-unknown-unknown
```

Now, each time you want to compile the project:
```
cargo build -r --target wasm32-unknown-unknown
mkdir -p built_html
# the folder export_html contains the html wrapper so that the wasm can be used
cp -r export_html/* built_html/
cp -r target/wasm32-unknown-unknown/release/*.wasm built_html/
```
and run it in a local web server:
```
cargo install basic-http-server  # you only need to run this once
basic-http-server built_html/
```
Now open the "addr" address in your browser, usually http://127.0.0.1:4000.

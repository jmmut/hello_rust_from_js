# hello-rust-from-js

This project is an experiment calling Rust code from JavaScript.

## Running this project

Try it out in https://jmmut.itch.io/hello-rust-from-js.

## Running locally

### Setup (do this only once)
First, clone this repo, and [install rust](https://www.rust-lang.org/tools/install).

Then add the WebAssembly target for the compiler:
```
rustup target add wasm32-unknown-unknown
```
And install a local web server:
```
cargo install basic-http-server
```

### Running
You can look at the [github actions](.github/workflows/release.yml) where I build the WebAssembly
binary for itch.io, but you also have the [recompile_and_host.sh](recompile_and_host.sh) script to
run it on a local web server (which we installed in the setup):

```
./local_build_and_run.sh
```

Now open the "addr" address in your browser, usually http://127.0.0.1:4000.

## Learning resources

- https://surma.dev/things/rust-to-webassembly/
- https://developer.mozilla.org/en-US/docs/WebAssembly/Exported_functions

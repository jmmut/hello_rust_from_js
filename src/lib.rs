use wasm_bindgen::prelude::*;

pub fn hello_internal(name: &str) -> String {
    format!("Hello from rust, {}!", name)
}

#[wasm_bindgen]
pub fn hello(name: &str) -> JsValue {
    JsValue::from_str(&hello_internal(name))
}

use std::ptr;

#[no_mangle]
pub fn my_exported_func() -> f64 {
    return 1.618;
}

#[no_mangle]
pub fn returning_a_string() -> (*const String, usize) {
    let s = format!("interpolated {}", my_exported_func());
    let len = s.len();
    let ptr = ptr::addr_of!(s);
    (ptr, len)
}

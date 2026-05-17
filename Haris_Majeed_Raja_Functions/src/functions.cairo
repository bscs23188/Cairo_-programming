// Assignment: Functions in Cairo
// Name: Haris Majeed Raja
// Roll No: BSCS22017


fn add(a: felt252, b: felt252) -> felt252 {
    a + b
}

#[executable]
fn main() {
    let result = add(5, 7);
    println!("add(5, 7) = {}", result);
}
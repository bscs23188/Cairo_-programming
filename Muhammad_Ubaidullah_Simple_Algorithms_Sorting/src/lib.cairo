fn sort_three_numbers(a: u32, b: u32, c: u32) -> Array<u32> {
    let mut x = a;
    let mut y = b;
    let mut z = c;

    // Compare first two numbers
    if x > y {
        let temp = x;
        x = y;
        y = temp;
    };

    // Compare second and third numbers
    if y > z {
        let temp = y;
        y = z;
        z = temp;
    };

    // Final comparison
    if x > y {
        let temp = x;
        x = y;
        y = temp;
    };

    // Store sorted values
    let mut result = array![];

    result.append(x);
    result.append(y);
    result.append(z);

    result
}
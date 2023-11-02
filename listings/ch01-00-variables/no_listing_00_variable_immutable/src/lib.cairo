use debug::PrintTrait;
fn main() {
    // variable x is immutable
    let x = 5;
    x.print();
    // doing this will lead to an error - cannot assign to an immutable variable
    x = 6;
    x.print();
}

use debug::PrintTrait;

fn main() {
    let x = 5; // Outer scope: Declaring the first variable x

    let x = x + 1; // Shadowing in the same scope: Creating a new variable x, shadows the previous x

    {
        let x = x * 2; // Inner scope: Shadowing again in the inner scope, creating another new variable x

        'Inner scope x value is:'.print();
        x.print(); // Printing the value of the innermost x

    }
    'Outer scope x value is:'.print();
    x.print(); // Printing the value of the x in the outer scope
}

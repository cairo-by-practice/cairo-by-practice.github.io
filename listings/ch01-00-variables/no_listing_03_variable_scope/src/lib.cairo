use debug::PrintTrait;

fn main() {
    let x = 5; // Outer scope

    
    {
        let x = x * 2; // Inner scope

        'Inner scope x value is:'.print();
        x.print(); // Printing the value of the innermost x

    }
    'Outer scope x value is:'.print();
    x.print(); // Printing the value of the x in the outer scope
}

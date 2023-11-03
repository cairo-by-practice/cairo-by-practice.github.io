# Variables


We are assuming you have gone through the cairo book

### Variables and Mutability 

* Cairo uses an **immutable memory model**, meaning you can't change data once it's written.
* Variables in Cairo are **immutable by default**.

```rust,editable
    use debug::PrintTrait;
    fn main() {
        // variable x is immutable
        let x = 5;
        x.print();
        // doing this will lead to an error - cannot assign to an immutable variable
        x = 6;
        x.print();
    }


```

* Cairo allows you to make variables **mutable when needed**.
* You can make variables mutable by adding `"mut"` in front of the variable name.

```rust,editable

    use debug::PrintTrait;
fn main() {
    // variable x is immutable
    let __ __ = 5;
    x.print();

    x += 6;
    x.print();
}


```

```rust,editable
fn main() {
    // variable x is immutable
    let __ __ = 5;
    x.print();
    
    x += 6;
    x.print();
}

```



* Variable mutability is implemented as **syntactic sugar**.


# Constants

Constants are like variables, but they never change. They are always immutable.

Constants cannot use "mut," and they are always immutable. You declare them with "const" and must annotate the type.

```rust,editable

const ONE_HOUR_IN_SECONDS: u32 = 3600;

```

Constants can only be declared in the global scope, making them suitable for values needed throughout the code.

```rust,editable
        use debug::PrintTrait;

        fn main() {
            let x = plus_one(5);

            x.print();
        }

        fn plus_one(x: u32) -> u32 {
            x + 1
        }
```

Constants can only be set to constant expressions, not values calculated at runtime. Only literal constants are supported.

```rust,editable

// examples- fill in the blanks
const MAX_VALUE: u32 = 100;
const SECONDS_PER_MINUTE: u32 = __;
const MINUTES_PER_HOUR: u32 = __;

```

Cairo uses uppercase letters with underscores to name constants.

- Constants are valid throughout the program's runtime, making them suitable for values like maximum points in a game or fundamental constants.

- sing constants for hardcoded values improves code clarity and allows easy updates in a single place when values change in the future.


# Scope

A scope is the range within the program for which the variable is valid.


```rust,editable
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


```

- 

```rust,editable
use debug::PrintTrait;
    // fix the error
    fn main() {
        let x = 5; // Outer scope
        
        {
            let x = x * 2; // Inner scope
            let y = 7;
            'Inner scope x value is:'.print();
            x.print(); // Printing the value of the innermost x
            

        }
        'Outer scope x value is:'.print();
        x.print(); // Printing the value of the x in the outer scope
        y.print();
    }

```

## Shadowing

Variable shadowing is the practice of declaring a new variable with the same name as an existing one, effectively taking precedence in scope.


```rust,editable
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


```

Shadowing allows reassignment of variables while maintaining immutability, unlike using `mut`.

In the provided code example, a variable `x` is initially set to 5 and is then shadowed in an inner scope, where its value is changed. When the inner scope ends, the inner shadowing is cleared, and the value returns to 5.

```rust,editable
        // fix the error by using let x = five();

        use debug::PrintTrait;

        fn five() -> u32 {
            5
        }

        fn main() {
            
            x.print();
        }

```

Shadowing permits changing the variable type within the same name, which is not possible with `mut`.

Shadowing can help keep code cleaner and more flexible when dealing with variables.
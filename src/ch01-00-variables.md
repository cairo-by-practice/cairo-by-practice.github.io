# Variables


We are assuming you have gone through the cairo book

### Variables and Mutability 

* Cairo uses an **immutable memory model**, meaning you can't change data once it's written.
* Variables in Cairo are **immutable by default**.

1. 

```rust,editable

    use debug::PrintTrait;
    
    // Fix the error below 

    fn main() {
        
        let x = 5;

        print(x);
        
    }


```

2. 

```rust,editable

    use debug::PrintTrait;

    // Fix the error below 

    fn main() {
        // variable x is immutable
        let x = 5,

        x.print();
    }

```

* Cairo allows you to make variables **mutable when needed**.
* You can make variables mutable by adding `"mut"` in front of the variable name.

1. 

```rust,editable
// Fill the blanks in the code to make it compile

    use debug::PrintTrait;
fn main() {
    
    let __ __ = 5;
    x.print();

    x += 6;
    x.print();
}


```

2. 

```rust,editable

// Fix the error with the use of mut and defining y

    use debug::PrintTrait;

    fn main() {
        
        let x = 5;
        x.print();

        x = y;

        x.print();
    }
```



* Variable mutability is implemented as **syntactic sugar**.


# Constants

Constants are like variables, but they never change. They are always immutable.

👉 Constants cannot use "mut," and they are always immutable. You declare them with "const" and must annotate the type.

1. 

```rust,editable

// fix the line of code below

const ONE_HOUR_IN_SECONDS = 3600;

```

Constants can only be declared in the global scope, making them suitable for values needed throughout the code.


2. 

```rust,editable

    // Introduce a const  ONE_HOUR_IN_SECONDS

        use debug::PrintTrait;    

        fn main() {

            let one_hour_in_seconds_plus_one = one_hour_in_seconds_plus_one(ONE_HOUR_IN_SECONDS);

            one_hour_in_seconds_plus_one.print();
        }

        fn one_hour_in_seconds_plus_one(one_hour_in_seconds: u32) -> u32 {
            one_hour_in_seconds + 1
        }

```

Constants can only be set to constant expressions, not values calculated at runtime. Only literal constants are supported.

1. 

```rust,editable

// examples- fill in the blanks
const MAX_VALUE: u32 = 100;
const SECONDS_PER_MINUTE: u32 = __;
const MINUTES_PER_HOUR: u32 = __;

```

Cairo uses uppercase letters with underscores to name constants.

> Constants are valid throughout the program's runtime, making them suitable for values like maximum points in a game or fundamental constants.



# Scope

A scope is the range within the program for which the variable is valid.

1. 

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
            x.print(); 
            

        }
        'Outer scope x value is:'.print();
        x.print(); 
        y.print();
    }

```

2. 


```rust,editable

    use debug::PrintTrait;

// Fix the error with the use of define_greetings

    fn main() {
 
        x.print(); 
    }

    fn define_greetings() {
        let x = "hello World";
    }

```


## Shadowing

Variable shadowing is the practice of declaring a new variable with the same name as an existing one, effectively taking precedence in scope.


1. 

```rust,editable
use debug::PrintTrait;
// Only modify  the code below to make it work

fn main() {
    let x: i32 = 2;
    {
        let x = 10;

        assert(x, 12,'Expected 12');
    }

    assert(x, 2);

    let x = 20;
    x.print();
}


```

2. 

```rust,editable
use debug::PrintTrait;

// modify  the code so that x is 16

fn main() {
    let x = 5; 

    let x = x + 1; 


    {
        let x = x * 2; 

        assert(x == 16, 'Expected 16');

        'Inner scope x value is:'.print();
        x.print(); 

    }

    'Outer scope x value is:'.print();
    x.print(); 
}


```

>Shadowing allows reassignment of variables while maintaining immutability, unlike using `mut`.

1. 

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

- Shadowing permits changing the variable type within the same name, which is not possible with `mut`.

Shadowing can help keep code cleaner and more flexible when dealing with variables.

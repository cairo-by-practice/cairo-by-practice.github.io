### Functions

We define a function in Cairo by entering fn followed by a function name and a set of parentheses. The curly brackets tell the compiler where the function body begins and ends.

1. 

``` rust,editable

use debug::PrintTrait;

// fill in the blanks

__ another_function __ {
    'Another function.'.print();
}

__ and_another_function __ 
    'And another function.'.print();


fn main() {
    'Hello, world!'.print();
    another_function();
    and_another_function();
}


```

2. 

```rust,editable

use debug::PrintTrait;

// make it work - print the sum

fn sum_of_two_numbers() {
    let num_one:u64 = 17;

    let num_two = num_one * 2;

    let sum  =  num_two + num_one;

    'The sum of the two numbers is: '.print();

    'sum.'.print();
}

fn main() {
    'Hello, world!'.print();
    
}


```

3. 

``` rust,editable

use debug::PrintTrait;

// try soliving this

// this function is okay, no need to modify anything
fn is_receiver () {
    'Receiver!.'.print();
}


fn main() {

    is_reciever();

}


```


#### Parameters

1.

```rust,editable

use debug::PrintTrait;
// complete the code to print x
fn main() {
    show_number(5);
}

fn show_number(x: felt252) {
    
}

```

> In function signatures, you must declare the type of each parameter. This is a deliberate decision in Cairo’s design: requiring type annotations in function definitions means the compiler almost never needs you to use them elsewhere in the code to figure out what type you mean. The compiler is also able to give more helpful error messages if it knows what types the function expects.

2. 

```rust,editable
use debug::PrintTrait;
// fill in the blanks
fn main() {
    another_function(5, 6);
}

fn another_function(____: felt252, ____: felt252) {
    x.print();
    y.print();
}

```

3. 

```rust,editable
use debug::PrintTrait;

// Change the types of the sum function

fn main() {
    sum(5, 6);
}

fn sum(x: u32, y: u32) {
    x+y;

}

```


#### Named parameters


- Named parameters in Cairo allow you to specify the names of the arguments when you call a function. This makes your function calls more readable and self-descriptive. 


1. 

```rust,editable
// fix the error in the code
fn foo(x: u8, y: u8) {}

fn main() {
    let first_arg = 3;
    let second_arg = 4;
    foo(x: first_arg, y: secend_arg);

    let x = 1;
    let y = 2;
    foo(:x, :y)
}


```


2. 


```rust,editable

use debug::PrintTrait;

fn calculate(x: u32, y: u32) -> u32 {
    // This function calculates the product of x and y.
    x * y
}

fn main() {
  
    let a = 5;
    let b = 3;
    
   
    let result = calculate(x: a, y: b);
    
    // Uncomment the code below to check if 'result' contains the correct value.
    // if result == 15 {
    //     'Correct!'.print();
    // } else {
    //     'Try again.'.print();
    // }
}

```

### Statements and Expressions


>Statements are instructions that perform some action and do not return a value.
Expressions evaluate to a resultant value.


1. 

``` rust,editable

use debug::PrintTrait;

// add the missing statement

fn main() {
    let y = 6; //let y = 6; is a statement.


    x.print();

    
}

```


2. 


```rust,editable

use debug::PrintTrait;

fn calculate(x: felt252, y: felt252) -> felt252 {
        
        x + y // This is an expression
    }

fn main() {
     
    let a = 5;
    let b = 6;
    
    // Call the 'calculate' function and store the result in the 'result' variable 👉 Calling a function is an expression
    

    // Print the result
    result.print();
}



```

3. 

``` rust,editable
use debug::PrintTrait;
// use this expression in the code

    // let y = {
    //     let x = 3;
    //     x + 1
    // };

fn main(){

    y.print();
}

```

>Expressions do not include ending semicolons. If you add a semicolon to the end of an expression, you turn it into a statement, and it will then not return a value.


### Functions with Return Values

- Functions in Cairo can return values, and the type of the return value is specified after the -> arrow. The return value is typically the result of the final expression in the function's body, but you can use return to return a value explicitly if needed.

1. 

```rust,editable
use debug::PrintTrait;
// make it work
fn five() -> u32 {
    
}

fn main() {
    let x = five();
    x.print();
}
```


2. 

```rust,editable

use debug::PrintTrait;

// make it work

fn main() {
    let x = plus_one(5);

    x.print();
}

fn plus_one() -> u32 {
    x + 1;
}

```
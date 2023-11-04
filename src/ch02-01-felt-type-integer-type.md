### Felt Type

 when a variable or argument type isn't specified, it defaults to a field element represented by the keyword "felt252."

 1.

 ```rust,editable
 use debug::PrintTrait;

fn main() {
    //  Define and initialize felt252 variables a and b with values of your choice.
    
    // Perform an arithmetic operation to achieve the desired result.
    
    assert(result == 24, 'result is not 24');
    
    // Print the results.
    'Success'.print();
}



 ```
2.

```rust,editable

use debug::PrintTrait;
fn main() {
    // Create a felt252 variable 'x' with an initial value of 42.

    //   type casting to convert 'x' into a u64 variable 'y'.

        let y:u64 = x.try_into().unwrap();

    // Print the values of ' 'y'.
}


```

3.

```rust,editable

use debug::PrintTrait;

// add something to make it work

fn main(){
    let x: felt252 = 3;
    

    let z:u32 = 4;

    let result = x + y;

    result.print();
}

```


### Integer Types

👉 It is highly recommended for programmers to use the integer types instead of the felt252 type whenever possible, as the integer types come with added security features that provide extra protection against potential vulnerabilities in the code, such as overflow checks.


1.

```rust,editable
use debug::PrintTrait;
//Try to change something to make the code work

fn sub_u8s(x:u8, y:u8) ->{
    x-y
}

fn main(){
    sub_u8s(1,3);
}

```

2. 

```rust,editable
use debug::PrintTrait;

// Try removing an element in the code to see if that resolves the problem
fn main(){
    let mut x:u32 = 13;
    let y:u128 = 15;

    x= y;

    let s = 28;

}

```

3.

- Numeric operations

```rust,editable
use debug::PrintTrait;
// fill in the blanks
fn main() {
    // addition
    let sum = __ + 10_u128; //result is 15

    // subtraction
    let difference = 95_u128 - 4_u128;

    // multiplication
    let product = 4_u128 * __;

    // division
    let quotient = 56_u128 / 32_u128; //result is 1
    let quotient = ___ / 32_u128; //result is 2

    // remainder
    let remainder = __ % 5_u128; // result is 3

    assert(remainder == 3, 'expecting 3');
    
    'Working!'.print();
}


```

4.

- Type casting 

```rust,editable
use debug::PrintTrait;
// Make some chanes to the code as needed to make it work properly.
fn main() {
    let my_felt252 = 10;
    // Since a felt252 might not fit in a u8, we need to unwrap the Option<T> type
    let my_u8: u8 = my_felt252.try_into().unwrap();

    let my_u16: u16 = my_u8.into();


    let check_u64:u64 = 10,

    assert(my_u64 == check_u64, 'Expected my_u64 be of type 64')

    let my_u128: u128 = my_u64.into();

    // try casting to usize
}


```
### Ownership Rules

>Each value in Cairo has an owner.
There can only be one owner at a time.
When the owner goes out of scope, the value will be dropped.

1. 

```rust,editable
use debug::PrintTrait;
// modify code to make it run
fn main(){
    let x = 'hello';
    {                      // s is not valid here, it’s not yet declared
        let s = 'hello';   // s is valid from this point forward

        // do stuff with s
    }                      // this scope is now over, and s is 
    s.print();


}

```

2. 

```rust,editable
// fix the error

fn foo(arr: Array<u128>) {}

fn bar(arr: Array<u128>) {}

fn main() {
    let mut arr = ArrayTrait::<u128>::new();
    foo(arr);
    bar(arr);
}

```


#### The Copy Trait

- If a type implements the Copy trait, passing it to a function will not move the ownership of the value to the function called, but will instead pass a copy of the value. You can implement the Copy trait on your type by adding the #[derive(Copy)] annotation to your type definition. 

> Cairo won't allow a type to be annotated with Copy if the type itself or any of its components don't implement the Copy trait. While Arrays and Dictionaries can't be copied, custom types that don't contain either of them can be.

1. 

```rust,editable
#[derive(Copy, Drop)]
struct Point {
    x: u128,
    y: u128,
}

fn main() {
    let p1 = Point { x: 5, y: 10 };
    foo(p1);
    foo(p1);
}

fn foo(p: Point) { // do something with p
}

```

#### The Drop Trait

- In Cairo, a value cannot go out of scope unless it has been previously moved.

1. 

```rust,editable

// fix the error

struct Vote {
    vote_type:felt252,
    vote_count:u128,
}

fn main() {
    let new_vote = Vote {vote_type:'Delegated',vote_count:3};
}

```


#### The Destruct Trait

- Cairo provides the Destruct trait, which allows you to specify the behavior of a type when it goes out of scope.

1. 

```rust,editable

// fix the error

struct A {
    dict: Felt252Dict<u128>
}

fn main() {
    A { dict: Default::default() }; 
}

```

####  Copy Array data with Clone

- If we do want to deeply copy the data of an Array, we can use a common method called clone.

1. 

```rust,editable

//modify the code by adding lines of code to make it work

// no need to change anything in the following functions

fn foo(arr1: Array<u128>) {}

fn bar(arr2: Array<u128>) {}

fn main() {
    let arr1 = ArrayTrait::<u128>::new();
    let arr2 = arr1.clone();

    foo(arr1);
    bar(arr2);
}

```

> you will need to run scarb cairo-run with the --available-gas=2000000 option to run this example, because it uses a loop and must be ran with a gas limit.


### Ownership and Functions

1. 

```rust,editable

#[derive(Drop)]
struct Item{
    item_no:u128,
    available:bool,
}

fn main() {
    let item =Item{item_no:1,available:true};  

    set_item_not_available(item);    

    let new_item_no = 5;                 

    set_item_no(new_item_no);                  
}                                   


fn set_item_not_available(item: Item) { // some_struct comes into scope
} // Here, some_struct goes out of scope and `drop` is called.

fn set_item_no(some_uinteger: u128) { // some_uinteger comes into scope
} // Here, some_integer goes out of scope and is dropped.

```

### Return Values and Scope

2. 

- Returning values can also transfer ownership.

```rust,editable

#[derive(Drop)]
struct A {}

fn main() {
    let a1 = gives_ownership();           // gives_ownership moves its return
                                          // value into a1

    let a2 = A {};                        // a2 comes into scope

    let a3 = takes_and_gives_back(a2);    // a2 is moved into
                                          // takes_and_gives_back, which also
                                          // moves its return value into a3

} // Here, a3 goes out of scope and is dropped. a2 was moved, so nothing
  // happens. a1 goes out of scope and is dropped.

fn gives_ownership() -> A {               // gives_ownership will move its
                                          // return value into the function
                                          // that calls it

    let some_a = A {};                    // some_a comes into scope

    some_a                                // some_a is returned and
                                          // moves ownership to the calling
                                          // function
}

// This function takes an instance some_a of A and returns it
fn takes_and_gives_back(some_a: A) -> A { // some_a comes into
                                          // scope

    some_a                               // some_a is returned and moves
                                         // ownership to the calling
                                         // function
}

```

2. 

```rust,editable

use debug::PrintTrait;

// complete he code

fn main() {
    let arr1 = ArrayTrait::<u128>::new();

    

    len.print();
}

fn calculate_length(arr: Array<u128>) -> (Array<u128>, usize) {
    let length = arr.len(); // len() returns the length of an array

    (arr, length)
}
```

3. 

```rust,editable

use debug::PrintTrait;

// complete he code

fn main() {

    let width = 30;
    let height = 45;
    
    let (area, perimeter) = calculate(width,height);
    
    area.print();
    perimeter.print();
}

fn calculate(width:u128,height:u128) -> (u128, u128) {
     

    
}
```
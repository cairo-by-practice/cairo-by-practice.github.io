- In Cairo, a snapshot is an immutable view of a value at a certain point in time.


### Snapshots

```rust,editable

use debug::PrintTrait;

// modify the code to fix the errors

fn main() {
    let mut arr1 = ArrayTrait::<u128>::new();
    let first_snapshot = arr1; 
    arr1.append(1);
    let first_length = calculate_length(
        first_snapshot
    ); 
    let second_length = calculate_length(arr1); 
    first_length.print();
    second_length.print();
}

fn calculate_length(arr: Array<u128>) -> usize {
    arr.len()
}

```

2. 

```rust,editable
use debug::PrintTrait;

// modify the code to print  'Number is even'.print(); if number at index 0 is even

fn main() {
    let mut numbers = ArrayTrait::<u128>::new();
    numbers.append(13); 
    let numbers_snapshot = @numbers;
    let numbers_length = calculate_length(
        numbers_snapshot
    ); 

    
    if number_is_even{
        'Number is even'.print();
    }
}

fn calculate_length(arr: @Array<u128>) -> usize {
    arr.len()
}

fn is_even() -> bool {

}

```


### Desnap Operator

- To convert a snapshot back into a regular value, you can use the desnap operator *, which serves as the opposite of the @ operator: the snapshot value is copied to a new variable.

1. 

```rust,editable

// complete the code to make it work
use debug::PrintTrait;

#[derive(Copy, Drop)]
struct Rectangle {
    height: u64,
    width: u64,
}

fn main() {
    let rec = Rectangle { height: 3, width: 10 };
    let area = calculate_area(@rec);
    area.print();
}

fn calculate_area(rec: @Rectangle) -> u64 {

  
}

```

2. 

```rust,editable

// modify to fix the error no need to add or remove a line of code

#[derive(Copy, Drop)]
struct Rectangle {
    height: u64,
    width: u64,
}

fn main() {
    let rec = Rectangle { height: 3, width: 10 };
    flip(@rec);
}

fn flip(rec: @Rectangle) {
    let temp = rec.height;
    rec.height = rec.width;
    rec.width = temp;
}

```

### Mutable References


-  Mutable references are actually mutable values passed to a function that are implicitly returned at the end of the function, returning ownership to the calling context. By doing so, they allow you to mutate the value passed while keeping ownership of it by returning it automatically at the end of the execution. In Cairo, a parameter can be passed as mutable reference using the ref modifier.

1. 

```rust,editable

use debug::PrintTrait;
// modify the code to make it work , use mut and ref where necessary
#[derive(Copy, Drop)]
struct Rectangle {
    height: u64,
    width: u64,
}

fn main() {
    let  rec = Rectangle { height: 3, width: 10 };
    flip(rec);
    rec.height.print();
    rec.width.print();
}

fn flip( rec: Rectangle) {
    let temp = rec.height;
    rec.height = rec.width;
    rec.width = temp;
}

```
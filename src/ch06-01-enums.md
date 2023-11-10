### Enums

Enums, short for "enumerations," are a way to define a custom data type that consists of a fixed set of named values, called variants. Enums are useful for representing a collection of related values where each value is distinct and has a specific meaning.

- Enum Variants and Values

1. 

```rust,editable

// fix the errors

use debug::PrintTrait;

#[derive(Drop)]
enum Direction {
    North,
    East,
    South,
    West,
}

fn describe_direction(direction: Direction) -> felt252 {
    match direction {
        Direction::North => "Heading North",
        Direction::East => "Heading East",
        Direction::South => "Heading South",
        Direction::West => "Heading West",
    }
}

fn main() {

    let direction = Direction::North;

    let direction_description = describe_direction(direction);

    direction_description.print();

} 

```

2. 

```rust,editable

// fix the errors to print success

use debug::PrintTrait;

#[derive(Drop)]
enum Message {
    Quit,
    Echo: felt252,
    Move: (u128, u128),
}



fn main() {
    let quit_message = Message::Quit;
    let echo_message = Message::Echo();
    let move_message = Message::Move(10, 20);

    'success!'.print();
}

```

- Enums Combined with Custom Types

3. 

```rust,editable

use debug::PrintTrait;

// complete the code to print variant Echo and Move

#[derive(Drop)]
enum Message {
    Quit,
    Echo: felt252,
    Move: (u128, u128),
}

fn process_message(msg: Message) {
    match msg {
        Message::Quit => {
            'Exiting the application.'.print();
        },
        Message::Echo(value) => {
            value.print();
        },
        Message::Move((x, y)) => {
            x.print();
            y.print();
        },
    }
}

fn main() {
    let quit_message = Message::Quit;
    let echo_message = Message::Echo(42);
    let move_message = Message::Move((10, 20));

    process_message(quit_message);

}


```

- Trait Implementations for Enums


4. 

```rust,editable

use debug::PrintTrait;

// complete code below 

#[derive(Drop)]
enum Message {
    Quit,
    Echo: felt252,
    Move: (u128, u128),
}

// no need to modify trait
trait Processing {
    fn process(self: Message);
}

// no need to modify impl
impl ProcessingImpl of Processing {
    fn process(self: Message) {
        match self {
            Message::Quit => { 'quitting'.print(); },
            Message::Echo(value) => { value.print(); },
            Message::Move((x, y)) => { 'moving'.print(); },
        }
    }
}

fn main(){

   
    message.process(); 
    
}
```

- The Option Enum

5. 

> The Option enum is a standard Cairo enum that represents the concept of an optional value. It has two variants: Some: T and None: (). Some: T indicates that there's a value of type T, while None represents the absence of a value.

```rust,editable

// fix the errors in the code below

use debug::PrintTrait;

#[derive(Drop)]
enum Option<T> {
    Some: T,
    None: (),
}


fn find_value_recursive(arr: @Array<felt252>, value: felt252, index: usize) -> Option<usize> {
    if index >= arr.len() {
        return Option::None;
    }

    if *arr.at(index) == value {
        return Option::Some();
    }

    find_value_recursive(arr, value, index + 1)
}

fn find_value_iterative(arr: @Array<felt252>, value: felt252) -> Option<usize> {
    let length = arr.len();
    let mut index = 0;
    let mut found: Option<usize> = Option::None;
    loop {
        if index < length {
            if *arr.at(index) == value {
                found = Option::Some();
                break;
            }
        } else {
            break;
        }
        index += 1;
    };
    return found;
}


fn main(){

    let mut my_array = ArrayTrait::new();
        my_array.append(3);
        my_array.append(7);
        my_array.append(2);
        my_array.append(5);


        let value_to_find = 7;
        let result = find_value_recursive(@my_array, value_to_find, 0);
        let result_i = find_value_iterative(@my_array, value_to_find);

        match result {
            Option::Some(index) => { if index == 1 {
                'it worked'.print();
            } },
            Option::None => { 'not found'.print(); },
        }
        match result_i {
            Option::Some(index) => { if index == 1 {
                'it worked'.print();
            } },
            Option::None => { 'not found'.print(); },
        }

}

```
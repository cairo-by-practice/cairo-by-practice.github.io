### The Match Control Flow Construct

- Cairo's "match" control flow construct allows for comparing values against patterns that can include literal values, variables, and wildcards, offering flexibility and expressiveness.

1. 

```rust,editable

// complete the following code

use debug::PrintTrait;

enum Coin {
    Penny,
    Nickel,
    Dime,
    Quarter,
}

fn value_in_cents(coin: Coin) -> felt252 {
    match coin {
        Coin::Penny => 1,
        Coin::Nickel => 5,
        Coin::Dime => 10,
        Coin::Quarter => 25,
    }
}


let coin = Coin::Penny;

value.print();

```

- Patterns That Bind to Values

2. 

```rust,editable

// fix the errors below

use debug::PrintTrait;

#[derive(Drop)]
enum UsState {
    Alabama,
    Alaska,
}

#[derive(Drop)]
enum Coin {
    Penny,
    Nickel,
    Dime,
    Quarter: UsState,
}

fn value_in_cents(coin: Coin) -> felt252 {
    match coin {
        Coin::Penny => 1;
        Coin::Nickel => 5;
        Coin::Dime => 10;
        Coin::Quarter(state) => {
            state.print();
            25
        },
    }
}

impl UsStatePrintImpl of PrintTrait<UsState> {
    fn print(self: UsState) {
        match self {
            UsState::Alabama => ('Alabama').print(),
            UsState::Alaska => ('Alaska').print(),
        }
    }
}

fn main(){

    let coin_state = Coin::Quarter(UsState::Alaska);

    value_in_cents(coin_state);
}

```


-Matching with Options

3. 

```rust,editable

// fix the errors in the code below

use debug::PrintTrait;

enum Option<> {
    Some: T,
    None,
}

fn plus_one(x: Option<u8>) -> Option<u8> {
    match x {
        Option::Some(val) => Option::Some(val + 1),
        Option::None => Option::None,
    }
}

fn main() {
    let five: Option<u8> = Option::Some(5);
    let six: Option<u8> = plus_one(____);
    six.unwrap().print();
    let none = plus_one(Option::None);
    none.unwrap().print();
}

```


- Match 0 and the _ Placeholder


4. 

```rust,editable


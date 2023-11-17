### Bringing Paths into Scope with the use Keyword

1. 

```rust,editable

// complete the following code by calling add_to_waitlist in  eat_at_restaurant

mod front_of_house {
    mod hosting {
        fn add_to_waitlist() {}
    }
}

use restaurant::front_of_house::hosting;

fn eat_at_restaurant() {
    
}


```

- use only creates the shortcut for the particular scope in which the use occurs

2. 

```rust,editable
// this code wont complie try to fix the issue

mod transportation {
    mod public_transport {
        fn calculate_route() {

        }
    }
}

use city::transportation::public_transport;

mod citizen {
    fn plan_commute() {
        public_transport::calculate_route();
    }
}

```
-  Idiomatic way to bring the core library’s ArrayTrait trait into the scope.

```rust,editable
fn main() {
    let mut arr = ArrayTrait::new();
    arr.append(1);
}
```

3. 

 This example brings the add_to_waitlist function into scope with use, which is unidiomatic

 use idiomatic way to bring `add_to_waitlist` into scope with `use`

```rust,editable


mod front_of_house {
    mod hosting {
        fn add_to_waitlist() {}
    }
}

use restaurant::front_of_house::hosting::add_to_waitlist;

fn eat_at_restaurant() {
    add_to_waitlist();
}


```


#### Providing New Names with the as Keyword


You can resolve conflicts when importing two types with the same name in Cairo by using use followed by the path and then specifying an as clause with a new local name, acting as an alias for one of the types.

```rust,editable
use array::ArrayTrait as Arr;

fn main() {
    let mut arr = Arr::new(); // ArrayTrait was renamed to Arr
    arr.append(1);
}

```

1. 

```rust,editable

// complete the following code

fn main() {
    let mut  bookings = BookingArr::new(); 
    bookings.append(1);
}


```

#### Importing multiple items from the same module

- When you want to import multiple items (like functions, structs or enums) from the same module in Cairo, you can use curly braces {} to list all of the items that you want to import

example

 Let's consider a module called vehicles with structures Car, Bicycle, and Truck.

```rust,editable

mod vehicles {
    #[derive(Drop)]
    struct Car {
        brand: felt252,
        model: felt252,
    }

    #[derive(Drop)]
    struct Bicycle {
        brand: felt252,
        color: felt252,
    }

    #[derive(Drop)]
    struct Truck {
        brand: felt252,
        capacity: u32,
    }
}

use vehicles::{Car, Bicycle, Truck};

fn main() {
    let my_car = Car {
        brand: 'Toyota',
        model: 'Corolla',
    };

    let my_bike = Bike {
        brand: 'Giant',
        color: 'Red',
    };

    let my_truck = Truck {
        brand: 'Ford',
        capacity: 5000,
    };

}

```

1.

```rust,editable
// complete the example rename the Bicycle struct to Bike while importing it

mod vehicles {
    #[derive(Drop)]
    struct Car {
        brand: felt252,
        model: felt252,
    }

    #[derive(Drop)]
    struct Bicycle {
        brand: felt252,
        color: felt252,
    }

    #[derive(Drop)]
    struct Truck {
        brand: felt252,
        capacity: u32,
    }
}

```

#### Re-exporting Names in Module Files

- When we bring a name into scope with the use keyword, the name available in the new scope can be imported as if it had been defined in that code’s scope. This technique is called re-exporting because we’re bringing an item into scope, but also making that item available for others to bring into their scope.

```rust,editable

mod front_of_house {
    mod hosting {
        fn add_to_waitlist() {}
    }
}

use restaurant::front_of_house::hosting;

fn eat_at_restaurant() {
    hosting::add_to_waitlist();
}


```

1. 

```rust,editable

mod university {
    mod departments {
        fn enroll_students() {
        }
    }
}

use education::university::departments;

fn register_courses() {
    departments::enroll_students();
}

// Which module have been re-exported

// an external code would use what instead of education::university::departments::enroll_students();

```
2. 

```rust,

// complete the code

mod zoo {

}



fn visit_zoo() {
    animals::feed_animals();
}


```
pathsscope.md
Displaying pathsscope.md.
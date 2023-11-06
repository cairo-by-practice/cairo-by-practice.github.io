### Dictionaries

Cairo's core library includes a dictionary-like data type called `Felt252Dict<T>`, representing unique key-value pairs. It's useful for organizing data beyond what an `Array<T>` can do, and it enables simulating mutable memory when none exists, akin to maps, hash tables, and associative arrays in other languages.


In Cairo, the key type is restricted to felt252 leaving only the possibility to specify the value data type, represented by T in `Felt252Dict<T>`

>insert(felt252, T) -> () to write values to a dictionary instance and
get(felt252) -> T to read values from it.

1. 

```rust,editable

// fix the errors to make it work by adding some lines

fn main() {
    let mut balances: Felt252Dict<u64> = Default::default();



    let customer_one_balance = balances.get('customer_one');
    assert(customer_one_balance == 100, 'Balance is not 100');

    let customer_two_balance = balances.get('customer_two');
    assert(customer_two_balance == 200, 'Balance is not 200');
}

```

2. 

- `Felt252Dict<T>` effectively allows us to "rewrite" the stored value for any given key.

```rust,editable

// complete the code

fn main() {
    let mut fruits: Felt252Dict<u64> = Default::default();

   
    fruits.insert('Apples', 100);
    
    let number_of_fruits = fruits.get('Apples');

    assert(number_of_fruits == 100, 'Apples balance is not 100');


    fruits.insert('Apples', 200);

    assert(number_of_fruits_2 == 200, 'Apples balance is not 200');
}

```

>once you instantiate a Felt252Dict<T>, behind the scenes all keys have their associated values initialized as zero. This means that if for example, you tried to get the balance of an inexistent user you will get 0 instead of an error or an undefined value.
This also means there is no way to delete data from a dictionary. Something to take into account when incorporating this structure into your code.




#### Dictionaries of types not supported natively

`Felt252DictValue<T>` defines the zero_default method which is the one that gets called when a value does not exist in the dictionary. This is implemented by some common data types, such as most unsigned integers, bool and felt252 - but it is not implemented for more complex ones types such as arrays, structs (including u256), and other types from the core library. This means that making a dictionary of types not natively supported is not a straightforward task, because you would need to write a couple of trait implementations in order to make the data type a valid dictionary value type. To compensate this, you can wrap your type inside a `Nullable<T>`.

`Nullable<T>` is a smart pointer type that can either point to a value or be null in the absence of value.

1. 

```rust,editable

// fix the erros to make the code work

use dict::Felt252DictTrait;
use nullable::{nullable_from_box, match_nullable, FromNullableResult};

fn main() {
    // Create the dictionary
  

    // Crate the array to insert
    let mut payments = ArrayTrait::new();
    payments.append(234);
    payments.append(102);
    payments.append(100);

    // Insert it as payments `Span`
    customer_payments.insert('John', nullable_from_box(BoxTrait::new(a.span())));

    // Get John payments
   

    // Search the value and assert it is not null
    let span = match match_nullable(customer_payment) {
        FromNullableResult::Null(()) => panic_with_felt252('No value found'),
        FromNullableResult::NotNull(customer_payment) => customer_payment.unbox(),
    };

    // Verify we are having the right payments
    assert(*span.at(0) == 234, 'Expecting 234');
    assert(*span.at(1) == 102, 'Expecting 102');
    assert(*span.at(2) == 100, 'Expecting 100');
}


```



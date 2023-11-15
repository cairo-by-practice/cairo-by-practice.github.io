## Paths for Referring to an Item in the Module Tree

A path can take two forms:

An absolute path is the full path starting from a crate root. The absolute path begins with the crate name.

A relative path starts from the current module.

>Both absolute and relative paths are followed by one or more identifiers separated by double colons (::).

1. 

```rust,editable

//call the add_to_waitlist function from the eat_at_restaurant function. 

mod front_of_house {

    mod hosting {
        fn add_to_waitlist() {}

        fn seat_at_table() {}
    }

    mod serving {
        fn take_order() {}

        fn serve_order() {}

        fn take_payment() {}
    }
}


fn eat_at_restaurant() {
    // Absolute path
    

    // Relative path
   
}

```

- In Cairo, absolute paths start from the crate root, which you need to refer to by using the crate name.

- Starting with a module name means that the path is relative to the current module.


### Starting Relative Paths with super

example

```rust,editable
fn deliver_order() {}

mod back_of_house {
    fn fix_incorrect_order() {
        cook_order();
        super::deliver_order();
    }

    fn cook_order() {}
}

```

1.  

```rust,editable
// Create a new function within an inner module.
// Implement functionality in this new function that utilizes super to access a function or module in the parent scope.
// Ensure the code compiles and successfully accesses the desired functionality using super.

```

2. 

```rust,editable

// fix the errors

mod parent_module {
   

    fn parent_function() {
        'Function from the parent module'.print();
    }

    mod child_module {
       
         fn child_function() {
            'Function from the child module.'.print();
            // Accessing parent function using super
        }
    }
}

fn main() {
    parent_module::child_module::child_function();
}


```

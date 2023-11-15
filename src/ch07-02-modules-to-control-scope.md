## Modules to Control Scope

> Paths  allow you to name items and the `use` keyword  brings a path into scope.

- Create a new Scarb project with "scarb new bakery"

```rust,editable
// scarb new bakery
```

complete the following so that its similar to your `Scarb.toml` file

```rust,editable

[package]
name = ""
version = "0.1.0"

# See more keys and their definitions at https://docs.swmansion.com/scarb/docs/reference/manifest.html

[dependencies]

```

- update bakery to resemble

```rust,editable

bakery/
├── Scarb.toml
└── src
    ├── kitchen
    │   └── bakery_product.cairo
    ├── kitchen.cairo
    └── lib.cairo


```


- copy this lines to `bakery_product.cairo`

```rust,editable

#[derive(Copy, Drop)]
struct Bread {}

```

- copy this into the crate root

```rust,editable

use kitchen::bakery_product::Bread;

mod kitchen;


fn main() {
    let bread = Bread {};
}

```

> use kitchen::bakery_product::Bread; lets us use bring the Bread type into scope


### Grouping Related Code in Modules

- Modules let us organize code within a crate for readability and easy reuse.

```rust,editable

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

```

module tree 

```rust,editable
restaurant
 └── front_of_house
     ├── hosting
     │   ├── add_to_waitlist
     │   └── seat_at_table
     └── serving
         ├── take_order
         ├── serve_order
         └── take_payment


```

Excerices

1. 

Create Warehouse Crate:

Begin by creating a new Cairo package named "warehouse_management" using scarb new warehouse_management.
Open the src/lib.rs file and establish the module structure within the crate.

```rust,editable

//scarb new warehouse_management
```

```rust,editable

// Define modules to represent different aspects of the warehouse system, such as inventory, receiving, shipping, and employees.
// Organize these modules based on their functionality and relationships within the warehouse system.

```


```rust,editable

// Within each module, define function signatures or method prototypes that represent actions related to that specific area of the warehouse (e.g., adding items to inventory, receiving shipments, employee management).
// Leave the function bodies empty to emphasize module structuring rather than implementation details.

```

2. 

add the module tree of the above module


```rust,editable
//module tree 

```

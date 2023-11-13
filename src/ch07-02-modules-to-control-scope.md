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

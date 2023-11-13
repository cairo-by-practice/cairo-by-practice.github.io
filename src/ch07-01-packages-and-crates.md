
## Packages and Crates

### Crate

- A crate is the smallest amount of code that the Cairo compiler considers at a time. Even if you run cairo-compile rather than scarb build and pass a single source code file, the compiler considers that file to be a crate. Crates can contain modules, and the modules may be defined in other files that get compiled with the crate

#### Crate root

The crate root is the lib.cairo source file that the Cairo compiler starts from and makes up the root module of your crate 

```rust,editable

// lib.cairo -> crate root

```

#### Package
A cairo package is a bundle of one or more crates with a Scarb.toml file that describes how to build those crates. This enables the splitting of code into smaller, reusable parts and facilitates more structured dependency management.

> Creating a Package with Scarb

1. 

Create a package with below layout:

```rust,editable
.    
├── Scarb.toml
└── src
    └── lib.cairo

1 directory, 2 files

```

```rust,editable
# in Scarb.toml

[package]
name = "hello_package"
version = "0.1.0"

# See more keys and their definitions at https://docs.swmansion.com/scarb/docs/reference/manifest.html

[dependencies]


```


2. 

- complete the foloowing

```rust,editable

// src/ is 
// lib.cairo is 
// Scarb.toml is 
```





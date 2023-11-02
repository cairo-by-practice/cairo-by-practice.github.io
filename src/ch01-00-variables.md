# Variables


We are assuming you have gone through the cairo book

### Variables and Mutability 

* Cairo uses an **immutable memory model**, meaning you can't change data once it's written.
* Variables in Cairo are **immutable by default**.

```rust,editable
{{#include ../listings/ch01-00-variables/no_listing_00_variable_immutable/src/lib.cairo}}

```

* Cairo allows you to make variables **mutable when needed**.
* You can make variables mutable by adding `"mut"` in front of the variable name.

```rust,editable
{{#include ../listings/ch01-00-variables/no_listing_01_variable_immutable_practice/src/lib.cairo}}

```

```rust,editable
fn main() {
    // variable x is immutable
    let __ __ = 5;
    x.print();
    
    x += 6;
    x.print();
}

```



* Variable mutability is implemented as **syntactic sugar**.


# Constants

Constants are like variables, but they never change. They are always immutable.

Constants cannot use "mut," and they are always immutable. You declare them with "const" and must annotate the type.

```rust,editable

const ONE_HOUR_IN_SECONDS: u32 = 3600;

```

Constants can only be declared in the global scope, making them suitable for values needed throughout the code.

```rust,editable
{{#include ../listings/ch01-00-variables/no_listing_02_constants/src/lib.cairo}}

```

Constants can only be set to constant expressions, not values calculated at runtime. Only literal constants are supported.

```rust,editable

// examples- fill in the blanks
const MAX_VALUE: u32 = 100;
const SECONDS_PER_MINUTE: u32 = __;
const MINUTES_PER_HOUR: u32 = __;

```

Cairo uses uppercase letters with underscores to name constants.

- Constants are valid throughout the program's runtime, making them suitable for values like maximum points in a game or fundamental constants.

- sing constants for hardcoded values improves code clarity and allows easy updates in a single place when values change in the future.


# Scope

A scope is the range within the program for which the variable is valid.


```rust,editable
{{#include ../listings/ch01-00-variables/no_listing_03_variable_scope/src/lib.cairo}}

```

- 

```rust,editable
{{#include ../listings/ch01-00-variables/no_listing_04_variable_scope_practice/src/lib.cairo}}

```

## Shadowing

Variable shadowing is the practice of declaring a new variable with the same name as an existing one, effectively taking precedence in scope.


```rust,editable
{{#include ../listings/ch01-00-variables/no_listing_05_variable_shadowing/src/lib.cairo}}

```

Shadowing allows reassignment of variables while maintaining immutability, unlike using `mut`.

In the provided code example, a variable `x` is initially set to 5 and is then shadowed in an inner scope, where its value is changed. When the inner scope ends, the inner shadowing is cleared, and the value returns to 5.

```rust,editable
{{#include ../listings/ch01-00-variables/no_listing_06_variable_shadowing_practice/src/lib.cairo}}

```

Shadowing permits changing the variable type within the same name, which is not possible with `mut`.

Shadowing can help keep code cleaner and more flexible when dealing with variables.
### Comments


In Cairo programs, you can include explanatory text within the code using comments. To create a comment, use the // syntax, after which any text on the same line will be ignored by the compiler.

```rust,editable
// add some comments

fn foo(x: u8, y: u8) {}

fn main() {
    let first_arg = 3;
    let second_arg = 4;
    foo(x: first_arg, y: second_arg);
    let x = 1;
    let y = 2;
    foo(:x, :y)
}


```
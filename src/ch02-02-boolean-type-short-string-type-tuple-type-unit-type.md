
### The Boolean Type

1.

``` rust,editable
use debug::PrintTrait;

// Make changes to  Print 'Working'
fn main() {
    let t = true;

    let f: bool = false; // with explicit type annotation

    if f {
        'Working'.print();
    }
}

```
2.

```rust,editable

use debug::PrintTrait;
// complete the code
fn main() {
    // Uncover the Mystery
    let mystery: bool = true; .

    // Check 'mystery' and print "It's a mystery!" if 'mystery' is 'true'.


}


```

### The Short String Type

👉 Cairo doesn't have a native type for strings, but you can store characters forming what we call a "short string" inside felt252s.

1.

```rust,editable

use debug::PrintTrait;
// make it work
fn main() {
    let my_first_char = "C";
    let my_first_string = "Hello world";

    my_first_char.print();
    my_first_string.print();

}

```

>A short string has a max length of 31 chars. This is to ensure that it can fit in a single felt (a felt is 252 bits, one ASCII char is 8 bits).

2.

```rust,editable
use debug::PrintTrait;
// make it work
fn main() {

    let long_string = "The quick brown fox jumps over the lazy dog, revealing the hidden treasure map to the ancient lost city of El Dorado!";

    long_string.print();

}


```


### The Tuple Type

 👉 Tuples have a fixed size and are created by enclosing values within parentheses. Each value in a tuple can have a distinct type, and type annotations are optional when defining tuples.

 1.

```rust,editable

use debug::PrintTrait;
// fill in the blanks
fn main() {
    let tup: (u32, u64, __) = (__, 20, true); 
}

```

2.

```rust,editable
use debug::PrintTrait;

// make it work 
fn main() {
    let tup = (500, 6, true);

    if y == 6 {
        'y is six!'.print();
    }
}


```
>To get the individual values out of a tuple, we can use pattern matching to destructure a tuple value


3.

```rust,editable

use debug::PrintTrait;
// make it work
fn main() {
    let (x, y): (u128, u32) = ('2', 3);

    let sum = x + y

    assert(sum == 5 , 'expected 5');

    sum.print();
}

```

### The Unit Type

>A unit type is a type which has only one value (). It is represented by a tuple with no elements. Its size is always zero, and it is guaranteed to not exist in the compiled code.
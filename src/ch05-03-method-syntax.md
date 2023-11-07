
 ### Method Syntax

 In Cairo, methods are similar to functions in other programming languages. They are declared using the fn keyword and have parameters and a return value. However, unlike functions, methods are tied to a specific type and always have self as their first parameter, representing the instance of the type they are called on. This is different from Rust, where methods can be defined directly on types. In Cairo, you need to define a trait and an implementation associated with the type to create methods for that type.

 1. 

 ```rust,editable
 
 // fix the errors


 use debug::PrintTrait;
#[derive(Copy, Drop)]
struct Rectangle {
    width: u64,
    height: u64,
}

trait RectangleTrait {
    fn area(self: Rectangle) -> u64;
}

impl RectangleImpl of RectangleTrait {
    fn area(self: Rectangle) -> u64 {
        (*self.width) * (*self.height)
    }
}

fn main() {
    let rect1 = Rectangle { width: 30, height: 50, };

    rect1.area().print();
}
 
 ```

 2. 

 ```rust,editable

 // modify the code to make it work
 // add a method to check if height is an odd number and return true if its odd
 
use debug::PrintTrait;

#[derive(Copy, Drop)]
struct Rectangle {
    width: u64,
    height: u64,
}

trait RectangleTrait {
    fn width(self: @Rectangle) -> bool;
}

impl RectangleImpl of RectangleTrait {
    fn width(self: @Rectangle) -> bool {
        (*self.width) > 0
    }
}

// no need to modify the main function

fn main() {
    let rect1 = Rectangle { width: 30, height: 50, };
    rect1.width().print();
    rect1.height().print();
}
 
 ```

 3. 

 ```rust,editable
 
 use debug::PrintTrait;

// use  ref self: T to chenge height to 40 and return area

#[derive(Copy, Drop)]
struct Rectangle {
    width: u64,
    height: u64,
}

trait RectangleTrait {
    fn area(self: Rectangle) -> u64;
}

impl RectangleImpl of RectangleTrait {
    fn area(self: Rectangle) -> u64 {
        (*self.width) * (*self.height)
    }
}

fn main() {
    let rect1 = Rectangle { width: 30, height: 50, };

    rect1.area().print();
}
 
 ```


 
 ### Methods with More Parameters

4. 


```rust,editable

// add the missing pieces to fix the errors

use debug::PrintTrait;

#[derive(Copy, Drop)]
struct Rectangle {
    width: u64,
    height: u64,
}

trait RectangleTrait {
    fn area(self: @Rectangle) -> u64;
    fn can_hold() -> bool;
}

impl RectangleImpl of RectangleTrait {
    fn area(self: @Rectangle) -> u64 {
        *self.width * *self.height
    }

    fn can_hold() -> bool {
        *self.width > *other.width && *self.height > *other.height
    }
}


fn main() {
    let rect1 = Rectangle { width: 30, height: 50, };
    let rect2 = Rectangle { width: 10, height: 40, };
    let rect3 = Rectangle { width: 60, height: 45, };

    'Can rect1 hold rect2?'.print();
    rect1.can_hold(@rect2).print();

    'Can rect1 hold rect3?'.print();
    rect1.can_hold(@rect3).print();
}

```


### Accessing implementation functions

- All functions defined within a trait and impl block can be directly addressed using the :: operator on the implementation name. 

1. 


```rust,editable

// add the missing pieces to fix the errors

use debug::PrintTrait;

#[derive(Copy, Drop)]
struct Rectangle {
    width: u64,
    height: u64,
}

trait RectangleTrait {
    fn area(self: @Rectangle) -> u64;
    fn can_hold() -> bool;
    fn square(size: u64) -> Rectangle;
}

impl RectangleImpl of RectangleTrait {
    fn area(self: @Rectangle) -> u64 {
        *self.width * *self.height
    }

    fn can_hold() -> bool {
        *self.width > *other.width && *self.height > *other.height
    }

    fn square(size: u64) -> Rectangle {
        Rectangle { width: size, height: size }
    }
}


fn main() {
    let rect1 = Rectangle { width: 30, height: 50, };
    let rect2 = Rectangle { width: 10, height: 40, };
    let rect3 = Rectangle { width: 60, height: 45, };
    let square = RectangleImpl::square(10);

    'Can rect1 hold rect2?'.print();
    rect1.can_hold(@rect2).print();

    'Can rect1 hold rect3?'.print();
    rect1.can_hold(@rect3).print();
}

```

### Multiple impl Blocks


```rust,editable

trait RectangleCalc {
    fn area(self: @Rectangle) -> u64;
}
impl RectangleCalcImpl of RectangleCalc {
    fn area(self: @Rectangle) -> u64 {
        (*self.width) * (*self.height)
    }
}

trait RectangleCmp {
    fn can_hold(self: @Rectangle, other: @Rectangle) -> bool;
}

impl RectangleCmpImpl of RectangleCmp {
    fn can_hold(self: @Rectangle, other: @Rectangle) -> bool {
        *self.width > *other.width && *self.height > *other.height
    }
}

```
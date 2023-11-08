
 ### An Example Program Using Structs

 - A program that calculates the area of a rectangle.

 1. 

 ```rust,editable

 

use debug::PrintTrait;

struct Rectangle {
    width: u64,
    height: u64,
}

fn main() {
    let rectangle = Rectangle { width: 30, height: 10, };
    let area = area(rectangle);
    area.print(); // print out the area
}

fn area(rectangle: Rectangle) -> u64 {
    rectangle.width * rectangle.height
}
 
 ```

 Exercise

 1. 

 ```rust,editable
 
 use debug::PrintTrait;

 // modify the code to make it work

struct Rectangle {
    width: u64,
    height: u64,
}

fn main() {
    let rectangle = Rectangle { width: 30, height: 10, };
    
    perimeter.print(); // print out the area
}

fn ____(rectangle: Rectangle) -> u64 {
    
}
 
 ```

 2. 

 ```rust,editable
 
 use debug::PrintTrait;

struct Card {
    suit: felt252,
    rank: u64,
}

fn main() {
    let ace_of_hearts = Card { suit: 'H', rank: 1, };
    ace_of_hearts.print();
}
 
 ```

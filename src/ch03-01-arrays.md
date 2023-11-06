## Arrays


An array is a collection of elements of the same type. You can create and use array methods by importing the array::ArrayTrait trait.

1. 


```rust,editable

// complete code by adding elements 2,4,6 in array a

fn main() {
    let mut a = ArrayTrait::new();

}

```

- To add an element to the end of an array, you can use the append() method
- You can only remove elements from the front of an array by using the pop_front() method. This method returns an Option containing the removed element, or Option::None if the array is empty.

2. 

```rust,editable

use debug::PrintTrait;

// Modify the code to make it work without removing or adding any line 

fn main() {
    let mut a = ArrayTrait::new();
    a.append(10);
    a.append(1);
    a.append(2);

    
    // no change required in the code from here

    let first_value = a.pop_front().unwrap();

    first_value.print(); // print '10'

    let num:u128 = 12;

    let sum = first_value + num;

    sum.print(); // print '10'
}


```

>To access array elements, you can use get() or at() array methods that return different types. Using arr.at(index) is equivalent to using the subscripting operator arr[index].

3. 

```rust,editable

use debug::PrintTrait;

// use at() to print element at index 1 and 2

fn main() {
    let mut a = ArrayTrait::new();
    a.append(3);
    a.append(2);
    a.append(1);

}


```

4. 

- An array is a collection of elements of the same type.

```rust,editable

use debug::PrintTrait;

// fix the error

fn main() {
    let mut a = ArrayTrait::new();
    a.append(3);
    a.append(2);
    a.append('Doe');

    let third_item = *a.at(2);

    third_item.print();

}


```

5. 

```rust,editable

fn main() -> u128 {
    let mut arr = ArrayTrait::<u128>::new();
    arr.append(100);
    let index_to_access = // add value to see what would happen if the index doesn't exist?
    match arr.get(index_to_access) {
        Option::Some(x) => {
            *x
                .unbox() 
        },
        Option::None => {
            let mut data = ArrayTrait::new();
            data.append('out of bounds');
            panic(data)
        }
    }
}

```

6. 

>To determine the number of elements in an array, use the len() method. The return is of type usize.
If you want to check if an array is empty or not, you can use the is_empty() method, which returns true if the array is empty and false otherwise.

1. 


```rust,editable

use debug::PrintTrait;

// fill in the blanks

fn main() -> u128 {
    let mut arr = ArrayTrait::<u128>::new();
    arr.append(100);
    arr.append(90);
    arr.append(80);

    if __ ___ {
        'More than three items added'.print();
    } else  {
             // print number of items in the array
    }

   


}

```

2. 

```rust,editable

use debug::PrintTrait;

// fill in the blanks - no need to use len() method

fn main() -> u128 {
    let mut arr = ArrayTrait::<u128>::new();


    if __ ___ {
        'array is empty'.print();
    } else {
        'array is not empty'.print();
    }

}

```

3. 

```rust,editable

use debug::PrintTrait;

fn main() -> u128 {
    let mut arr = ArrayTrait::<u128>::new();
    arr.append(100);
    arr.append(90);
    arr.append(80);

    let index_to_access =
        1; 
    match arr.get(index_to_access) {
        Option::Some(x) => {
            *x
                .unbox() // Don't worry about * for now, if you are curious see Chapter 4.2 #desnap operator
        // It basically means "transform what get(idx) returned into a real value"
        },
        Option::None => {
            let mut data = ArrayTrait::new();
            data.append('out of bounds');
            panic(data)
        }
    }
}

```



#### Span

- Span is a struct that represents a snapshot of an Array for safe, non-modifying access to array elements, ensuring data integrity and avoiding borrowing problems when passing arrays between functions. Span supports all Array methods except for append().
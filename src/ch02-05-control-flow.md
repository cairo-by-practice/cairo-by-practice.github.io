### Control Flow

 👉 The most common constructs that let you control the flow of execution of Cairo code are if expressions and loops.


 #### if Expressions

1. 

```rust,ediatble

use debug::PrintTrait;

// fill in the blanks

fn main() {

    let number = 3;

    if __ == 5 {
        'condition was true'.print();
    } __ {  //  include an else ? 
        'condition was false'.print();
    }
}

```

> If you don’t provide an else expression and the condition is false, the program will just skip the if block and move on to the next bit of code.


2. 

```rust,editable

// fix the error

use debug::PrintTrait;

fn main() {
    let check_number = 3;

    if check_number = 5 {
        'condition was true'.print();
    } else {
        'condition was false'.print();
    }
}

```

3. 


```rust,editable

use debug::PrintTrait;

// complete the code to make it work


fn find_student_score(student_name:felt252) -> u32 {

}

fn main() {
    let mut student_name = 'John Doe';


    'John Doe scored '.print();
    student_score.print();
}


```

#### Multiple Conditions with else if


1. 

```rust,editable

use debug::PrintTrait;

// fix the errors without removing or adding lines

fn main() {
    let value_one = 3;
    let value_two = 12;

    if value_one == value_two {
        'value_one is equal to value_two'.print();
    } else if value_one < value_two {
        'value_one is greater than value_two'.print(); 
    } else if value_one > value_two {
        'value_one is less than value_two'.print();
    } else {
        'value_one is not equal to value_two'.print();
    }
}

```

2. 

```rust,editable

use debug::PrintTrait;

// Identify and fix the error

fn main() {
    let number = 3;

    if number == 12 {
        'number is 12'.print();
    } else if number == 3 {
        'number is 3'.print();
    } else if number - 2 = 1 {
        'number minus 2 is 1'.print();
    } else {
        'number not found'.print();
    }
}


```


> Cairo only executes the block for the first true condition, and once it finds one, it doesn’t even check the rest. Using too many else if expressions can clutter your code, so if you have more than one, you might want to refactor your code.


#### Using if in a let statement

👉 Because if is an expression, we can use it on the right side of a let statement to assign the outcome to a variable.


``` rust,editable
use debug::PrintTrait;

// complete the code

fn main() {

    let condition = true;

    let number = if condition {
        
    } else {
        
    };

    if number == 5 {
        'condition was true'.print();
    }
}

```

### Repetition with Loops

- It’s often useful to execute a block of code more than once. 

The loop keyword tells Cairo to execute a block of code over and over again forever or until you explicitly tell it to stop.


1. 

```rust,editable

use debug::PrintTrait;

// Modify the code to make it work

fn main() {

    let mut i: usize = 0;

    loop {
        if i > 10 {
                    
        }
        'again!'.print();
    }
}

```

2. 

```rust,editable

use debug::PrintTrait;

// modify the code such that i will not print when i is equal to 7

fn main() {
    let mut i: usize = 0;
    loop {
        if i > 10 {
            break;
        }
        i.print();
        i += 1;
    }
}

```

3. 

```rust,editable

use debug::PrintTrait;

// modify the code to print i , where is an even number 

fn main() {
    let mut i: usize = 0;
    loop {
        if i > 10 {
            break;
        }
        i.print();
        i += 1;
    }
}

```

#### Returning Values from Loops

- One of the uses of a loop is to retry an operation you know might fail, such as checking whether an operation has succeeded. You might also need to pass the result of that operation out of the loop to the rest of your code. 


1. 


```rust,editable

use debug::PrintTrait;

// Fix the errors without adding or removing lines

fn main() {
    let mut job_number = 0;

    let job_value = loop {
        if job_number = 10 {
            break job_number * 100;
        }
        job_number += 1
    };

    'The Job value is '.print();
    job_value.print();
}


```



>  Cairo prevents us from running program with infinite loops by including a gas meter. The gas meter is a mechanism that limits the amount of computation that can be done in a program.


Resources: 

>[Control Flow](https://book.cairo-lang.org/ch02-05-control-flow.html)
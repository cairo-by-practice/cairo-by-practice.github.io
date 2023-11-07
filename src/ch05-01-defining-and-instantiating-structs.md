
 >To define a struct, we enter the keyword struct and name the entire struct. A struct’s name should describe the significance of the pieces of data being grouped together. Then, inside curly brackets, we define the names and types of the pieces of data, which we call fields.

1. 

 ```rust,editable

 //complete the code to make it work
 
 #[derive(Copy, Drop)]
struct User {
    active: bool,
    username: felt252,
    email: felt252,
    sign_in_count: u64,
}


fn main(){

    let new_user  =  User {active:true,username:'Doe',email:'doe@mail.com',sign_in_count:12};
}


 
 ```


 2. 


 ```rust,editable

 //complete the code to make it work
 
 #[derive(Copy, Drop)]
struct User {
    active: bool,
    username: felt252,
    email: felt252,
    sign_in_count: u64,
}


fn main(){
    
    let new_user  =  User {active:true,username:'Doe',email:'doe@mail.com',sign_in_count:12};
}

fn user_info(){
    user_one.email = 'anotheremail@example.com';

}

 ```


 3. 

 ```rust,editable
 // complete the code
 #[derive(Copy, Drop)]
struct User {
    active: bool,
    username: felt252,
    email: felt252,
    sign_in_count: u64,
}
fn main() {

}

fn build_user(email: felt252, username: felt252) -> User {
    User { active: true, username: username, email: email, sign_in_count: 1, }
}
 
 ```


 4. 
 ```rust,editable
 // assumming you have already completed the exercise  above, how can we further modify the code below and still make it work

 #[derive(Copy, Drop)]
struct User {
    active: bool,
    username: felt252,
    email: felt252,
    sign_in_count: u64,
}
fn main() {
    

}

fn build_user(email: felt252, username: felt252) -> User {
    User { active: true, username: username, email: email, sign_in_count: 1, }
}
 
 ```

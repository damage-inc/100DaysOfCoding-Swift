import Cocoa

/*
 “Assertions and preconditions are checks that happen at runtime. You use them to make sure an essential condition is satisfied before executing any further code. If the Boolean condition in the assertion or precondition evaluates to true, code execution continues as usual. If the condition evaluates to false, the current state of the program is invalid; code execution ends, and your app is terminated.
 
 The difference between assertions and preconditions is in when they’re checked: Assertions are checked only in debug builds, but preconditions are checked in both debug and production builds. In production builds, the condition inside an assertion isn’t evaluated. This means you can use as many assertions as you want during your development process, without impacting performance in production.”
 */

let age = -13

//assert(age>=0,"Age cannot be negative!")
//Assertion failed: Age cannot be negative!: file Assertions and preconditions.playground, line 11

var days = 365

assert(days>360 , "normal year")
//this gives no output, since the condition is true

//assert(days>365, "regular year")
//Assertion failed: regular year: file Assertions and preconditions.playground, line 19

days += 1
assert(days>365, "regular year")
//this gives no output, since the condition is true

//assert(days>400)
//Assertion failed: : file Assertions and preconditions.playground, line 26

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}
//Fatal error: A person's age can't be less than zero.: file Assertions and preconditions.playground, line 34



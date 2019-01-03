import Cocoa

/*
 “Use a precondition whenever a condition has the potential to be false, but must definitely be true for your code to continue execution. For example, use a precondition to check that a subscript is not out of bounds, or to check that a function has been passed a valid value.
 
 You write a precondition by calling the precondition(_:_:file:line:) function. You pass this function an expression that evaluates to true or false and a message to display if the result of the condition is false.”
 
 */

let numBytes = 23870

precondition(numBytes>20000, "Enough memory")
//no warning, it is ok.

precondition(numBytes<23000, "too much memory used")
//Precondition failed: too much memory used: file Preconditions.playground, line 15

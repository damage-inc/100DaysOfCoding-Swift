import Cocoa

/*
 “You use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant or variable. Optional binding can be used with if and while statements to check for a value inside an optional, and to extract that value into a constant or variable, as part of a single action.”

 */

var str1 = "Hello, world"
var str2 = "12345"

if let int1 = Int(str1) {
    /*
     “If the conversion is successful, the actualNumber constant becomes available for use within the first branch of the if statement. It has already been initialized with the value contained within the optional, and so there’s no need to use the ! suffix to access its value. In this example, actualNumber is simply used to print the result of the conversion.”
     */
    
    print("The string \"\(str1)\" has an integer value of \(int1)")
} else {
    print("The string \"\(str1)\" cannot be converted to integer")
}
//The string "Hello, world" cannot be converted to integer


//print(int1)
//Does not compile: Use of unresolved identifier 'int1'

if let int2 = Int(str2) {
    print("The string \"\(str2)\" has an integer value of \(int2)")
} else {
    print("The string \"\(str2)\" cannot be converted to integer")
}
//The string "12345" has an integer value of 12345


/*
 “You can include as many optional bindings and Boolean conditions in a single if statement as you need to, separated by commas. If any of the values in the optional bindings are nil or any Boolean condition evaluates to false, the whole if statement’s condition is considered to be false. The following if statements are equivalent”
 */

    if let firstNumber = Int("4"),
        let secondNumber = Int("42"),
        firstNumber < secondNumber && secondNumber < 100 {
        print("\(firstNumber) < \(secondNumber) < 100")
}
//4 < 42 < 100

if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
//4 < 42 < 100

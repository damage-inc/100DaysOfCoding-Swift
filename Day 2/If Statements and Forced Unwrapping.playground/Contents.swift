import Cocoa

/*
 “You can use an if statement to find out whether an optional contains a value by comparing the optional against nil. You perform this comparison with the “equal to” operator (==) or the “not equal to” operator (!=).”
 */

var str1 : String = "Hello, world"
var str2 : String = "238"

var i1 = Int(str1)
var i2 = Int(str2)

var t1 = type(of: str1)
var t2 = type(of: str2)
var t = type(of: t1)
var t3 = type(of: i1)

print("str1 is of type \(t1)")
//str1 is of type String
print("i1 is of type \(t3)")
//i1 is of type Optional<Int>
print("a type descryption is of type \(t)")
//a type descryption is of type String.Type

if i1 == nil {
    print ("cannot convert string \"\(str1)\" to number")
} else {
    print ("i1 value is \(i1!)")
}
//cannot convert string "Hello, world" to number


if i2 == nil {
    print ("cannot convert string \"\(str2)\" to number")
} else {
    print ("i2 value is \(i2!)")
    print ("i2 value is \(i2)")
}
//i2 value is 238
//i2 value is Optional(238)


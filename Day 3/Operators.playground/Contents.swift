import Cocoa

/*
 “Swift supports most standard C operators and improves several capabilities to eliminate common coding errors. The assignment operator (=) doesn’t return a value, to prevent it from being mistakenly used when the equal to operator (==) is intended. Arithmetic operators (+, -, *, /, % and so forth) detect and disallow value overflow, to avoid unexpected results when working with numbers that become larger or smaller than the allowed value range of the type that stores them. ”
 
 “Terminology
 Operators are unary, binary, or ternary:
 
 Unary operators operate on a single target (such as -a). Unary prefix operators appear immediately before their target (such as !b), and unary postfix operators appear immediately after their target (such as c!).
 
 Binary operators operate on two targets (such as 2 + 3) and are infix because they appear in between their two targets.
 
 Ternary operators operate on three targets. Like C, Swift has only one ternary operator, the ternary conditional operator (a ? b : c).
 
 The values that operators affect are operands. In the expression 1 + 2, the + symbol is a binary operator and its two operands are the values 1 and 2.”
 
 */

var a=1
var b=2

if (a==b) {print ("\(a)=\(b)")} else {print ("\(a)≠\(b)")}

let (dd,mm,yy)=(23,8,70)
print("\(dd)-\(mm)-\(yy) in swedish format is \(yy)-\(mm)-\(dd)")

//while in C this would work, in Swift it does not, as assignments do not return values

//if a=b {print("a=b")}
//Use of '=' in a boolean context, did you mean '=='?

var o1: Int = 23
var o2: Int = 8

var resultPlus = o1+o2
print("\(o1)+\(o2)=\(resultPlus) which is of type ", type(of: resultPlus))

var resultMinus = o1-o2
print("\(o1)-\(o2)=\(resultMinus) which is of type ", type(of: resultMinus))

var resultTimes = o1*o2
print("\(o1)*\(o2)=\(resultTimes) which is of type ", type(of: resultTimes))

var resultDiv = o1/o2
print("\(o1)/\(o2)=\(resultDiv) which is of type ", type(of: resultDiv))

var resultMod = o1%o2
print("\(o1)%\(o2)=\(resultMod) which is of type ", type(of: resultMod))

var s1 = "Good"
var s2 = " "
var s3 = "Morning"
var juxtapose = s1+s2+s3
print("\(s1)+\(s2)+\(s3)=\(juxtapose) which is of type ", type(of: juxtapose))

//var t = s1 + resultMinus
//Does not compile: Binary operator '+' cannot be applied to operands of type 'String' and 'Int'

var π : Double = 3.141592
print("π=\(π)")
//π=3.141592

//var t = resultMinus + π
//Does not compile: Binary operator '+' cannot be applied to operands of type 'Int' and 'Double'

//(the) Ternary operator

var min : Int = (o1 < o2 ? o1 : o2)
print("min(\(o1),\(o2))=\(min)")
//min(23,8)=8

//Nil-Coalescing Operator
/*“The nil-coalescing operator (a ?? b) unwraps an optional a if it contains a value, or returns a default value b if a is nil. The expression a is always of an optional type. The expression b must match the type that is stored inside a.

The nil-coalescing operator is shorthand for the code below:

a != nil ? a! : b
The code above uses the ternary conditional operator and forced unwrapping (a!) to access the value wrapped inside a when a is not nil, and to return b otherwise. The nil-coalescing operator provides a more elegant way to encapsulate this conditional checking and unwrapping in a concise and readable form.

NOTE

If the value of a is non-nil, the value of b is not evaluated. This is known as short-circuit evaluation.

*/

let defaultColorName = "red"
var userDefinedColorName: String?   // defaults to nil

var colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is nil, so colorNameToUse is set to the default of "red”

userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
// userDefinedColorName is not nil, so colorNameToUse is set to "green”

//Ranges

//closed range [a,b] is written a...b
for index in 1...5{
    print("\(index)")
}
/*1
2
3
4
5*/

//Half-Open Range Operator
/*The half-open range operator (a..<b) defines a range that runs from a to b, but doesn’t include b. It’s said to be half-open because it contains its first value, but not its final value.”
*/

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0..<count {
    print("Person \(i + 1) is called \(names[i])")
}
/*
 Person 1 is called Anna
 Person 2 is called Alex
 Person 3 is called Brian
 Person 4 is called Jack
 */

//One-Sided Ranges
/*The closed range operator has an alternative form for ranges that continue as far as possible in one direction—for example, a range that includes all the elements of an array from index 2 to the end of the array. In these cases, you can omit the value from one side of the range operator. This kind of range is called a one-sided range because the operator has a value on only one side. For example:*/

for name in names[2...] {
    print(name)
}
// Brian
// Jack

for name in names[...2] {
    print(name)
}
// Anna
// Alex
// Brian

let range = ...5
print(type(of: range))
//PartialRangeThrough<Int>

range.contains(7)   // false
range.contains(1)   // true
range.contains(-7)   // true

//Booleans
let bool1=[false,true]
let bool2=[false,true]

let count1 = bool1.count
let count2 = bool2.count

print(type(of:bool1))
//Array<Bool>

for i in 0..<count1{
    for j in 0..<count2{
       print("\(bool1[i]) OR \(bool2[j]) = \(bool1[i]||bool2[j])")
    }
}
//false OR false = false
//false OR true = true
//true OR false = true
//true OR true = true

for i in 0..<count1{
    for j in 0..<count2{
        print("\(bool1[i]) AND \(bool2[j]) = \(bool1[i]&&bool2[j])")
    }
}
//false AND false = false
//false AND true = false
//true AND false = false
//true AND true = true

func XOR (a: Bool, b: Bool) -> Bool {
    var result: Bool
    result = (a || b) && !(a && b)
    return result
}

for i in 0..<count1{
    for j in 0..<count2{
        var resBool : Bool = XOR(a: bool1[i], b: bool2[j])
        print("\(bool1[i]) XOR \(bool2[j]) = \(resBool)")
    }
}
//false XOR false = false
//false XOR true = true
//true XOR false = true
//true XOR true = false


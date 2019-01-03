import Cocoa

/*
 “You use optionals in situations where a value may be absent. An optional represents two possibilities: Either there is a value, and you can unwrap the optional to access that value, or there isn’t a value at all”
 */

let str1="238"
let str2="Hello, world"

let t1=Int(str1)
let t2=Int(str2)

print("t1 is of type: ",type(of: t1))
//t1 is of type:  Optional<Int>
print("t2 is of type: ",type(of: t2))
//t2 is of type:  Optional<Int>

let t3 = t1!

//let t4 = t2!
//Fatal error: Unexpectedly found nil while unwrapping an Optional value

print(type(of: t3))
//Int

var v1 : Int?
print(type(of: v1))
//Optional<Int>
print(v1)
//nil

var v2 : Int? = 139
print(type(of: v2))
//Optional<Int>
print(v2)
//Optional(139)
print(v2!)
//139



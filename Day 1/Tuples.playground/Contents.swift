import Cocoa

let httpError = (404, "Page not found")
print(type(of: httpError))
//returns (Int, String)

let (statusCode, statusMsg) = httpError
print(type(of: statusCode))
//int
print(type(of: statusMsg))
//string

print("status code equals \(statusCode)")
//status code equals 404
print("status message equals \(statusMsg)")
//status message equals Page not found

let pureWhite = (255,255,255)
print(type(of: pureWhite))
//(Int, Int, Int)

let (Red,_,_) = pureWhite
let (_,Green,_) = pureWhite
let (_,_,Blue) = pureWhite

print("(\(Red),\(Green),\(Blue))")
//(255,255,255)

let newYearDay = ("Tuesday", 1, "Jan", 2019)
print(type(of: newYearDay))
//(String, Int, String, Int)

let month = newYearDay.2
print(month)
//Jan
let day = newYearDay.0
print(day)
//Tuesday



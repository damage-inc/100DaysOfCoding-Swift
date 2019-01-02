import Cocoa

let min_uint    :   UInt        = UInt.min
let max_uint    :   UInt        = UInt.max
let min_uint8   :   UInt8       = UInt8.min
let max_uint8   :   UInt8       = UInt8.max
let min_uint16  :   UInt16      = UInt16.min
let max_uint16  :   UInt16      = UInt16.max
let min_uint32  :   UInt32      = UInt32.min
let max_uint32  :   UInt32      = UInt32.max
let min_uint64  :   UInt64      = UInt64.min
let max_uint64  :   UInt64      = UInt64.max

let min_int    :   Int        = Int.min
let max_int    :   Int        = Int.max
let min_int8   :   Int8       = Int8.min
let max_int8   :   Int8       = Int8.max
let min_int16  :   Int16      = Int16.min
let max_int16  :   Int16      = Int16.max
let min_int32  :   Int32      = Int32.min
let max_int32  :   Int32      = Int32.max
let min_int64  :   Int64      = Int64.min
let max_int64  :   Int64      = Int64.max

var numBits_uint    : uint      = uint(log2(Double(max_uint)))
var numBits_uint8   : uint      = uint(log2(Double(max_uint8)))+1
var numBits_uint16  : uint      = uint(log2(Double(max_uint16)))+1
var numBits_uint32  : uint      = uint(log2(Double(max_uint32)))+1
var numBits_uint64  : uint      = uint(log2(Double(max_uint64)))
var numBits_int     : uint      = uint(log2(Double(max_int)))+1+1
var numBits_int8    : uint      = uint(log2(Double(max_int8)))+1+1
var numBits_int16   : uint      = uint(log2(Double(max_int16)))+1+1
var numBits_int32   : uint      = uint(log2(Double(max_int32)))+1+1
var numBits_int64   : uint      = uint(log2(Double(max_int64)))+1


print("=====================================")
print("UINT \(numBits_uint) bits")
print("\tminimum value \(min_uint)")
print("\tmaximum value \(max_uint)")
print("---")
print("UINT8 \(numBits_uint8) bits")
print("\tminimum value \(min_uint8)")
print("\tmaximum value \(max_uint8)")
print("---")
print("UINT16 \(numBits_uint16) bits")
print("\tminimum value \(min_uint16)")
print("\tmaximum value \(max_uint16)")
print("---")
print("UINT32 \(numBits_uint32) bits")
print("\tminimum value \(min_uint32)")
print("\tmaximum value \(max_uint32)")
print("---")
print("UINT64 \(numBits_uint64) bits")
print("\tminimum value \(min_uint64)")
print("\tmaximum value \(max_uint64)")
print("---")

print("=====================================")
print("INT \(numBits_int) bits")
print("\tminimum value \(min_int)")
print("\tmaximum value \(max_int)")
print("---")
print("INT8 \(numBits_int8) bits")
print("\tminimum value \(min_int8)")
print("\tmaximum value \(max_int8)")
print("---")
print("INT16 \(numBits_int16) bits")
print("\tminimum value \(min_int16)")
print("\tmaximum value \(max_int16)")
print("---")
print("INT32 \(numBits_int32) bits")
print("\tminimum value \(min_int32)")
print("\tmaximum value \(max_int32)")
print("---")
print("INT64 \(numBits_int64) bits")
print("\tminimum value \(min_int64)")
print("\tmaximum value \(max_int64)")
print("---")


import Foundation
//: [Previous](@previous)


/*:
 # Specialization
 */


func swapValue<T: Equatable>(lhs: inout T, rhs: inout T) {
   print("generic version")
   
   if lhs == rhs {
      return
   }
   
   let tmp = lhs
   lhs = rhs
   rhs = tmp
}

func swapValue (lhs: inout String, rhs: inout String) {
    print("string version")
    if lhs.caseInsensitiveCompare(rhs) == .orderedSame { return }
    
    let tmp = lhs
    lhs = rhs
    rhs = tmp
}
var a = 1
var b = 2

swapValue(lhs: &a, rhs: &b)

var c = "swfit"
var d = "java"

swapValue(lhs: &c, rhs: &d)

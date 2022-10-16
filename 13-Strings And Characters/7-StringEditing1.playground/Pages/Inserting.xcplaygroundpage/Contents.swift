//
//: [Previous](@previous)

import Foundation

/*:
 # Inserting Characters
 */


var strs = "Hello Swift"
strs.insert(",", at: strs.index(strs.startIndex, offsetBy: 5))
if let sIndex = strs.firstIndex(of: "S") {
    strs.insert(contentsOf: "Awesome", at: sIndex)
}
if let someIndex = strs.lastIndex(of: "e"){
    strs.insert(" ", at: strs.index(someIndex, offsetBy: 1))
}
strs







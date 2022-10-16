//
//: [Previous](@previous)

import Foundation

/*:
 # Diacritic Insensitive
 */

let a = "Cafe"
let b = "Café"
a == b
a.compare(b) == .orderedSame
a.compare(b, options: [.diacriticInsensitive]) == .orderedSame










//: [Next](@next)

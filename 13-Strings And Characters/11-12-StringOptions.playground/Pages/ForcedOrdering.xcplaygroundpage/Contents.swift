//
//: [Previous](@previous)

import Foundation

/*:
 # Forced Ordering Option
 */

let upper = "STRING"
let upperToLower = "STRING".lowercased()

let lower = "string"

upper == lower
upper.compare(lower, options: [.caseInsensitive]) == .orderedSame
upper.compare(lower, options: [.caseInsensitive, .forcedOrdering]) == .orderedSame
upperToLower.compare(lower, options: [.caseInsensitive, .forcedOrdering]) == .orderedSame



//: [Next](@next)

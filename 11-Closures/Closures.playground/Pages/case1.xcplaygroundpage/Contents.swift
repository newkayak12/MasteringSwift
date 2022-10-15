//: [Previous](@previous)

import Foundation

let products = [
   "MacBook Air", "MacBook Pro",
   "iMac", "iMac Pro", "Mac Pro", "Mac mini",
   "iPad Pro", "iPad", "iPad mini",
   "iPhone 14", "iPhone 14 Pro", "iPhone SE2", "iPhone SE",
   "AirPods",
   "Apple Watch Ultra", "Apple Watch Nike+"
]

var proModels = products.filter({(name: String) -> Bool in return name.contains("Pro")})
print(proModels)

var sortedProModel = proModels.sorted(by: {(lhs: String, rhs: String ) -> Bool in return lhs.caseInsensitiveCompare(rhs) == .orderedAscending})
print(sortedProModel)



//: [Next](@next)

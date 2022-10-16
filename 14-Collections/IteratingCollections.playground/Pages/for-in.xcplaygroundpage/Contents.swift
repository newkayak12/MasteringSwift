import UIKit

/*:
 # Iterating Collections
 
 ## for-in
 ![for-in](for-in.png)
 */

print("========== Array =======")
let arr = [1,2,3]
for num in arr {
    print(num)
}


print("========== Set =======")
let set: Set = [1,2,3]
for num in set {
    print(num)
}


print("========== Dictionary =======")
let dict = ["A": 1, "B": 2, "C": 3]
for (k, v) in dict {
    print("key: \(k), value: \(v)")
}

//: [Next](@next)

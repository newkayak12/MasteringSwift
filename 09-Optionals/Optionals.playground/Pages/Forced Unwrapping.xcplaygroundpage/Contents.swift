
//: [Previous](@previous)

import Foundation

/*:
 # Unwrapping
 */

/*:
 ## Forced Unwrapping
 ![forced-unwrapping](forced-unwrapping.png)
 */

var num: Int? = nil;
print(num)
num = 123
print(num)
print(num!)
num = nil;
// print(num!)의 경우 Crash!
if num != nil {
    print(num!)
}
num = 123
let before = num;
let after = num!;






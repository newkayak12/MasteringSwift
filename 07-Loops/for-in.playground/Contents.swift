import UIKit
/*:
 # For-In Loops
 */
print("hello")

/*:
 ## Syntax
 ![syntax](syntax-range.png)
 */
for num in 0 ... 10 {
    print("hello \(num)");
}
for _ in 0 ... 10 {
    print("_ hello")
}
//wildCard Pattern


let power: Int = 10
var result = 1;
for _ in 1 ... power {
    result *= 2;
}
result

for num in stride(from: 0, through: 10, by: 2) {
    print(num)
}



/*:
 ## Syntax
 ![syntax](syntax-collection.png)
 */

//배열, 딕셔너리 등을 할당할 수도 있다.
let list: [String] = ["Apple", "Banana", "Orange"]
for fruit in list {
    print(fruit)
}



for root in 2 ... 9 {
    for element in 1 ... 9 {
        print("\(root) X \(element) = \(root * element)")
    }
    print("\n\n")
}







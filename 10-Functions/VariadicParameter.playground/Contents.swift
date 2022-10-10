import UIKit

/*:
 # Variadic Parameters
 ![variadic](variadic.png)
 */

print("Hello")

print("Hello", "Swift")
print("Hello", "Swift", separator: ",", terminator: ";\n")

func printSum(of nums: Int...){
    var sum = 0;
    for num in nums {
        sum += num
    }
    print(sum)
}

printSum(of: 1,2,3,4,5)

func printStrings( of strs: String... ){
    for str in strs{
        print(str)
    }
}

printStrings(of: "java", "swift", "objective-c")

















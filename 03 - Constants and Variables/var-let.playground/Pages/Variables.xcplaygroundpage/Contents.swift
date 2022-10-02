import UIKit
/*:
 # Variables
 
 ## Syntax
 ![Variables Syntax](syntax-var.png)
 */
/**
        [예약어 var/let ] [identifier] = [value]
 */

var name = "Swift";
var year = 2022;
var valid = true;

var x = 0.0, y = 0.0, z = 0.0;

name;
print(name, "\n-----\n");

    
/*:
 ## Syntax
 ![Variables Syntax](syntax-var-new-value.png)
 */

name = "Java"
name = "Objective-C"
print(name, "\n-----\n");

var anotherName: String  = name;
print(anotherName);

anotherName = "RxSwift";
print(anotherName)
print(name, "\n-----\n")


name = "Swift"
print(anotherName)
print(name, "\n-----\n")
//: [Next](@next)

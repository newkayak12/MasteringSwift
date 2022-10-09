import UIKit

/*:
 # Nil-Coalescing Operator
 */

var msg = ""
var input: String? = "Swift"

if let inputName = input {
    msg = "Hello, " + inputName
} else {
    msg = "Hello, Stranger"
}
print(msg)


var str = "Hello, " + ( input != nil ? input! : "Stranger" )
print(str)


/*:
 ## Syntax
 ````
 a ?? b
 OptionalExpression ?? Expression
 ````
*/



str = "Hello, " + (input ?? "Stranger") //단락 평가 따라서 오른쪽 피연산자는 sideEffect가 없는 코드가 와야 한다. 
print(str)























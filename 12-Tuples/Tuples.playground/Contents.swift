import UIKit

/*:
 # Tuples
 
 ## Tuple Expression
 ![tuple-expr](tuple-expr.png)
 */

let i = 12 //scalarType
let tuple = (1,2,3,4,5) //compoundType


let data = ("<html>", 200, "OK", 12.34)
type(of: data)


/*:
 ## Explicit Member Expression
 ![eme](eme.png)
 */

data.0
//data.1 = 404 // data가 let으로 선언되어 있어서 변경 불가

var mutableTuple = data
mutableTuple.0 = "<html> <body> </body> </html>"
mutableTuple.0
//지금까지 사용한 튜플 === unNamedTuple












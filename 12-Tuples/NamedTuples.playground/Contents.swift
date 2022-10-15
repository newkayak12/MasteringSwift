import UIKit

/*:
 # Named Tuples
 ![expr](expr.png)
 ![eme](eme.png)
 */

let data = ("<html>", 200, "ok", 12.34)
let namedTuple = (body: data.0, reponse: data.1, status: data.2, payload: data.3)
print(namedTuple)
//java의 map이랑 비슷해졌다.




















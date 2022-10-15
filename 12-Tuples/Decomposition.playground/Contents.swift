
import UIKit

/*:
 # Tuple Decomposition
 ![decomposition](decomposition.png)
 */


//js의 destructring
let data = (body: "<html>", method:"get", status:200, payload:"YJ")
let (body, method, status, payload) = data
print(body, method, status, payload)

let data2 = ("<html>","get", 200, "YJ")
let (body2, method2, status2, payload2) = data2
print(body2, method2, status2, payload2)

let (body3, method3, status3, _) = data2
print(body3, method3, status3)


















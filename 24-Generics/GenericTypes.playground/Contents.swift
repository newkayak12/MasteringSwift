import UIKit

/*:
 # Generic Types
 ![generic-type](generic-type.png)
 */

struct Color<T> {
    var red: T
    var green: T
    var blue: T
}

var c = Color(red: 128, green: 80, blue: 200)
//c = = Color(red: 1.1, green: 1.2, blue: 1.3)
var c2: Color<Double> = Color(red: 1.1, green: 1.2, blue: 1.3)

let arr: Array<Int>
let dict: Dictionary<String, Double>

extension Color where T == Int /*: FixedWidthInteger*/ {
    func getComponents() -> [T] {
        return [red, green, blue]
    }
}

let intColor = Color(red: 1, green: 2, blue: 3)
intColor.getComponents()

let dblColor = Color(red: 1.1, green: 1.2, blue: 1.3)
//dblColor.getComponents()

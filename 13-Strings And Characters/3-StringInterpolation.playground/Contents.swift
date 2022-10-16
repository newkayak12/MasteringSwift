import UIKit
/*:
 # String Interpolation
 ![placeholder](placeholder.png)
 */

var str = "12.34KB"
let size = 12.34
str = String(size) + "KB"
str = "\(size)KB"


/*:
 ## Format specifier
 ![format-specifier](format-specifier.png)
 */

str = String(format: "%.1fKB", size)
String(format: "Hello, %@", "Swift") //String %s -> %@
String(format: "%d", 12)
String(format: "%.3f", 12.34) //.3 ->  소수점 아래 3자
String(format: "%10.3f", 12.34) // 10.3 -> 정수 10 소수점 아래 3
String(format: "%10.3f", 12.34) // 010.3 -> 정수 10(빈 자리 0으로 채우고) 소수점 아래 3
String(format: "[%d]", 1234)
String(format: "[%10d]", 1234) //오른쪽 정렬
String(format: "[%-10d]", 1234)//왼쪽 정렬


let firstName = "SangHyeon"
let lastName = "Kim"

let korFormat = "내 이름은 %2$@ %1$@입니다."
let engFormat = "My name is %1$@ %2$@."
String(format: korFormat, firstName, lastName)
String(format: engFormat, firstName, lastName)



/**
 EscapeSequence
 */
let escape = "\\"
print(escape)
print("A\tB")
print("C\nD")
print("\"Hello?\" He said.")
print("\'Hello?\' He said.")



/**
 Swift 5+
 */
/*:
 # NEW String Interpolation
 */

struct Size {
    var width = 0.0
    var height = 0.0
}
let s = Size(width: 1.2, height: 3.4);
print("\(s)")

//
//extension Size: CustomStringConvertible {
//    public description: String {
//        return "\(width) x \(height)"
//    }
//}

extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: Size){
        appendInterpolation("\(value.width) x \(value.height)")
    }
    mutating func appendInterpolation(_ value: Size, style: NumberFormatter.Style){
        let formatter = NumberFormatter()
        formatter.numberStyle = style
        
        if let width = formatter.string(from: value.width as NSNumber), let height = formatter.string(from: value.height as NSNumber) {
            appendInterpolation("\(width) x \(height)")
        } else {
            appendInterpolation("\(value.width) x \(value.height)")
        }
    }
}

print("\(s)")
print("\(s, style: .spellOut)")

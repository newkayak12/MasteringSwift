import UIKit

/*:
 # Appending Strings and Characters
 */

var str = "Hello"
str.append(", ")
let s = str.appending("Swift")
str
s
s.appending("!")
/**
    메소드 이름이 동사 형태라면 기존의 값을 직접 변경 -> let으로 선언하면 호출할 수 없음
    메소드 이름이 -ed, -ing로 끝나면 값을 변경하고 리턴하는 형태임
 
 */


"File size is ".appendingFormat("%.1f", 12.314123)




//: [Next](@next)

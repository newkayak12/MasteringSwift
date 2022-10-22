import UIKit

/*:
 # Raw Values
 ![Raw Values](raw-values.png)
 */


enum Alignment: Int {
    case left //0
    case right //1 // 값을 지정하면 자동으로 값이 늘되, 이전 값을 기준으로 +1 한다.
    case center //2
}
Alignment.center.rawValue
Alignment.right.rawValue
Alignment.left.rawValue

//Alignment.center.rawValue = 10 //immutable

Alignment(rawValue: 0)//rawValue로 역으로 가져올 수도 있다.
Alignment(rawValue: 100)//없는 값은  Nil을 반환한다.


enum Weekday: String {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}

Weekday.sunday.rawValue//원시 값의 자료형을 문자열로 선언하고 원시값을 생략하면 case 이름이 원시 값으로 정해진다.

enum ControlChar: Character {
    case tab = "\t"//Character이기 때문에 문자열은 불가
    case newLine = "\n"
}















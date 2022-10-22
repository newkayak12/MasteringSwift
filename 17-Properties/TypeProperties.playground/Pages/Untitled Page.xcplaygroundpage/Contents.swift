import UIKit

/*:
 # Type Properties
 ## Stored Type Properties
 ![type1](type1.png)
 ![type2](type2.png)
 */

class Math {
    static let pi = 3.141592
}


Math.pi //instance 속성이 아니다(static)
/**
 Type 속성은 기본적으로  lazy 접근할 때 초기화된다.
 static으로 선언하면 subClass에서 오버라이드 금지
 */


/*:
 ## Computed Type Properties
 ![type3](type3.png)
 ![type4](type4.png)
 */




enum WeekDay: Int {
    case sunday = 1, monday, tuesday, wednesday, thursday, friday, saturday
    
    static var today: WeekDay{
        let cal = Calendar.current
        let today = Date()
        let weekday = cal.component(.weekday, from: today)
        return WeekDay(rawValue: weekday)!
    }
}

WeekDay.today




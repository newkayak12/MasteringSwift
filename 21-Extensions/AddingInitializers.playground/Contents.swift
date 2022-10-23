import UIKit

/*:
 # Adding Initializers
 */



extension Date {
    init?(year: Int, month: Int, day: Int) {
        let cal = Calendar.current
        var comp = DateComponents()
        comp.year = year
        comp.month = month
        comp.day = day
        
        guard let date = cal.date(from: comp) else {
            return nil
        }
        
        self = date
    }
}

let d = Date(year: 2022, month: 10, day: 23)
let d2 = Date(year: -1, month: 10, day: 11)


extension UIColor {
    convenience init(red: Int, green: Int, blue: Int){
        self.init(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: 1.0)
    }
}

UIColor(red: 0, green: 0, blue: 255)


struct Size {
    var width = 0.0
    var height = 0.0
}

extension Size {
    init(value: Double){
        width = value
        height = value
    }
}
Size()
Size(width: 11, height: 34)


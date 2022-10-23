import UIKit

/*:
 # Adding Properties
 */
//Stored , Property Observer (X)

extension Date {
    var year: Int {
        let cal = Calendar.current
        return cal.component(.year, from: self)
    }
    var month: Int {
        let cal = Calendar.current
        return cal.component(.month, from: self)
    }
}

let today = Date()
today.year
today.month


extension Double {
    var radianValue: Double {
        return (Double.pi * self) / 180.0
    }
    
    var degreeValue: Double {
        return self * 180.0 / Double.pi
    }
}


let dv = 45.0
dv.radianValue
dv.radianValue.degreeValue














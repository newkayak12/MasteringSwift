import UIKit

/*:
 # Adding Methods
 */

extension Double {
    func toFahrentheit() -> Double {
        return self * 9 / 5 + 32
    }
    func toCelsius() -> Double {
        return (self - 32) * 5 / 9
    }
    
    static func convertToFahrentheit(from celsius: Double) -> Double {
        return celsius.toFahrentheit()
    }
    
    static func convertToCelcius(from fahrentheit: Double) -> Double {
        return fahrentheit.toCelsius()
    }
}


let c = 30.0
c.toFahrentheit()
c.toFahrentheit().toCelsius()
Double.convertToFahrentheit(from: 30)



extension Date {
    func toString(format: String = "yyyyMMdd") -> String {
        let privateFormatter = DateFormatter()
        privateFormatter.dateFormat = format
        return privateFormatter.string(from: self)
    }
}

let d = Date()
d.toString()
d.toString(format: "yyyy년 MM월 dd일")


extension String {
    static func random(length: Int, charactersIn chars: String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789") -> String {
        var randomString = String()
        randomString.reserveCapacity(length)
        
        for _ in 0 ... length {
            guard let char = chars.randomElement() else {
                continue
            }
            
            randomString.append(char)
        }
        
        return randomString
    }
}

String.random(length: 5)

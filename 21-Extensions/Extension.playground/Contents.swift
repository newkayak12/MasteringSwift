import UIKit

/*:
 # Extension
 ![syntax](extension.png)
 ![syntax2](extension-protocol.png)
 */
//class enum struct protocol 모두 지원
//기존 member 오버라이딩 불가
struct Size {
    var width = 0.0
    var height = 0.0
}

extension Size{
    var area: Double {
        return self.width * self.height
    }
}

let s = Size()
s.width
s.height
s.area

extension Size: Equatable {
    public static func == (lhs: Size, rhs: Size) -> Bool {
        return (lhs.width == rhs.width) && (lhs.height == rhs.height)
    }
}

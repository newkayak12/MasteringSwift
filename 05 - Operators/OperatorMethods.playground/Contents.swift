
import UIKit

/*:
 # Operator Methods
 ## Syntax
 ![syntax](syntax.png)
 */

"a" == "a";
//이렇게 비교할 수 있는 것은 ==에 문자 비교가 포함되어 있기 떄문
struct Point {
    var x: Double = 0.0;
    var y: Double = 0.0;
}
let p1 = Point(x: 12, y: 23)
let p2 = Point(x: 123, y: 223)
//p1 == p2
//연산자 구조 안돼있어서 비교 불가
//Binary operator '==' cannot be applied to two 'Point' operands

//여기서 연산자 메소드를 override해야한다.
//연산자 메소드는 기존의 위치와 형태를 보존해야하며, 코드의 가독성 및 논리적 오류를 막기 위해서 비슷한 기능을 하도록 '확장'해야한다.

extension Point: Equatable {
//    static func == (lhs: Point, rhs: Point) -> Bool {
//        return (lhs.x == rhs.x) && (lhs.y == rhs.y)
//    }
    //따로 구현하지 않아도, Equatable만으로 컴파일러가 알아서 구현함
}
//extension으로 확장하며 프로토콜은 Equatable로 구현

p1 == p2;
p1 != p2;



extension Point {
    static prefix func -(pt: Point) -> Point {
        return Point(x: -pt.x, y: -pt.y);
    }
}


print(-p1);

extension Point {
    static postfix func ++(pt: inout Point) -> Point {
        let ret = pt;
        pt.x += 1;
        pt.y += 2;
        return ret;
    }
}

var p4 = Point(x: 1.0, y: 3.0);
let p5 = p4++;
print(p4)
print(p5)

extension Point {
    static func +=(pt: inout Point, value: Int) -> Point{
        let ret = pt;
        pt.x += Double(value);
        pt.y += Double(value);
        return ret;
    }
}
var p6 = Point(x: 2.1, y: 3.2);
var p7 = p6;
p7 += 12;
print(p6);
print(p7);

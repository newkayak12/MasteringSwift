import UIKit
/**
 연관값
 enum에 관련된 값을 함께 저장한다.
 */

/*:
 # Associated Values
 ![associated-values](associated-values.png)
 */
/**
 연관값은 Tuple로 선언
 */
enum VideoInterface{
    case dvi(width:Int, height: Int)
    case hdmi(Int, Int, Double, Bool)
    case displayPort(CGSize)
}
var input = VideoInterface.dvi(width: 2048, height: 1536)

switch input {
    case .dvi(width: 2048, height: 1536):
        print("dvi 2048 x 1536")
    case .dvi(width: 2048, _):
        print("dvi 2048 x Any")
    case .dvi:
        print("dvi")
    case .hdmi(let width, let height, let version, let audioEnabled):
        print("hdmi \(width) x \(height)")
    case let .displayPort(size):
        print("dp")
}

input = .hdmi(3840, 2160, 2.1, true)
















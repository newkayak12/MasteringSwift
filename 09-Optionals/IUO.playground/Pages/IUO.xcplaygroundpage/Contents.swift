
import Foundation

/*:
 # Implicitly Unwrapped Optionals
 ![iuo](iuo.png)
 */


let num: Int! = 1980312874901283
let a = num
type(of: a)
//iuo는 형식 추론으로는 추출X
let b: Int = num //옵셔널 바인딩/ 강제 추출 사용할 필요 없음
//단, nil인지는 따로 체크 안하기 때문에, 강제추출, 할당 과정을 거친다고 보면 된다.
type(of: b)


/**
 oulet 연결, api에서 IOU를 리턴하는 경우가 아니면 사용할 일이 없다고 한다.
 optional, optional binding으로 받으면 된다.
 */



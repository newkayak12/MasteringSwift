//
/**
 Foundation Collection ==> Class : 참조 / prefix : NS
    -> 객체 형식의 데이터만 가능
    > 가변/ 불변 컬렉션 별도로 나눠짐
    > 불변 : NSArray, NSDictionary, NSSet
    > 가변 : NSMutable~
 Swift Collection ==> struct : 값 / prefix :
    -> 객체/ 값
    > 불변 : let
    > 가변 : var
    ? Copy-On-Write : 반드시 복사가 되어야 할 때만 swift가 복사하여 사용
 */
/*:
 # Array
 */

/*:
 ## Array Literal
 ![array-literal](array-literal.png)
 */

let numbers = [1,2,3]

/*:
 ## Array Type
 ![array-type1](array-type1.png)
 ![array-type2](array-type2.png)
 */


let strArray: Array<String> = ["가", "나", "다"]
let strArray2: [String] = ["가", "나", "다"]


//: [Next](@next)

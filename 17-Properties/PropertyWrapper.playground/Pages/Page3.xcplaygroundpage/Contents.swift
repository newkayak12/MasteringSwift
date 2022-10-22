import Foundation

//: [Previous](@previous)



/*:
# Property Wrapper
*/
//class, struct, enum으로 구현할 수 있다.
@propertyWrapper
class SimpleWrapper {
   var wrappedValue: Int
   var metadata: String?
    
   init() {
      print(#function)
      wrappedValue = 0
     metadata = nil
   }
    //argument label이 wrappedValue인 생성자로 만들어야 값을 할당할 수 있다.
    init(wrappedValue value: Int){
        print(#function)
        wrappedValue = value
        metadata = nil
    }
    init(wrappedValue: Int, metadata: String?){
        print(#function)
        self.wrappedValue = wrappedValue
        self.metadata = metadata
    }
}


struct MyType {
    @SimpleWrapper
    var a: Int = 1234
    
    @SimpleWrapper(wrappedValue: 456)
    var b: Int
    
    @SimpleWrapper(wrappedValue: 123, metadata: "number")
    var c: Int
    
    @SimpleWrapper(metadata: "number")
    var d: Int = 123
// #2
//    lazy var d: Int = 123
//    #3
//    var d: Int = 123 {
//
//    }
}

//let t = MyType(a: 12) //-> 컴파일 에러
// 기본값을 전달하며 선언할 수 없다. propertyWrapper 때문이다.
let t = MyType()

/**
    1. 글로벌 스코프에서 사용할 수 없다.
    2. lazy 키워드, @NSCopying, @NSManaged, weak, unowned 등과 함께 사용할 수 없다
    3. computed 사용할 수 없다.
    4. override 할 수 없다.
    5. protocol, extension에 선언된 곳에는 선언할 수 없다.
 */
// #1
//@SimpleWrapper
//var a: Int

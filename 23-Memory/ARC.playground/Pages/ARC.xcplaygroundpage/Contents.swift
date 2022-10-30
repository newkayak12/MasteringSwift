import UIKit

/*:
 # Automatic Reference Counting
 */
/**
 class isntance의 메모리를 관리
 
 cocoa에서 사용하는 메모리 관리 모델
 
 OwnershipPolicy / ReferenceCount
 
 인스턴스는 참조 카운트가 1이상이면 생존, 아니면 제거
 
 obj-c -> MRC(Manual Reference Counting) / ARC
 swift -> ARC(컴파일러가 메모리 관리 코드를 자동으로 넣어줌)
 
            ARC
            -> String Reference : 기본적으로 인스턴스, 소유자는 강한 참조 관계를 형성한다. 소유자가 있는 한, 메모리에서 인스턴스가 해제되지 않는다.
                                
            -> Weak Reference
            -> Unowned Reference
 */
class Person {
   var name = "John Doe"
   
   deinit {
      print("person deinit")
   }
}


var person1: Person?
var person2: Person?
var person3: Person?

person1 = Person() //참조 카운트 1 증가
person2 = person1 //강한 참조 1씩 증가
person3 = person1 //강한 참조 1씩 증가

person1 = nil //소유권 포기 참조 카운트 1 감소
person2 = nil //소유권 포기 참조 카운트 1 감소
person3 = nil //메모리 제거












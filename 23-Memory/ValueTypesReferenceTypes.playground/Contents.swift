import UIKit

/*:
 # Value Types & Reference Types
 */

struct SizeValue {
   var width = 0.0
   var height = 0.0
}

var value = SizeValue();
var value2 = value  //값이 복사

value2.width = 1.0
value2.height = 2.0

value
value2


class SizeObject {
   var width = 0.0
   var height = 0.0
}

var object = SizeObject() // 힙에 새로운 공간 생성
var object2 = object //스택에 새로운 메모리 생성 + 이전 힙의 메모리 복사

object2.width = 1.0
object2.height = 2.0

object
object2


let v = SizeValue() //메모리 공간을 수정할 수 없도록 설정한다.
let o = SizeObject() //상수가 가리키는 스택의 값을 바꿀 수 없도록한다. 그러나 힙에 저장된 내용은 바꿀 수 있다.
o.width = 1.0
o.height = 2.0


/**
 
    ==, != -> 스택에 저장된 값을
 
    ==, !=, ===, !== -> 힙에 있는 값을 비교
 */









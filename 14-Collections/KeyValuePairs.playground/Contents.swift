
import UIKit

/*:
 # KeyValuePairs
 ## KeyValuePair Literal
  ![kvpliteral](kvp-literal.png)
 ## KeyValuePair Type
 ![kvptype](kvp-type.png)
  */

/**
 dictionary 처럼 k, v를 한 쌍으로 저장한다. + 배열과 유사한 특징을 갖는다.
 >> swift 경량화 컬렉션
 */

let words = ["A":"Apple", "B":"Banana", "C":"City"] //-> 이렇게 타입추론으로 사용하면 항상 dictionary로 추론
let kPairs: KeyValuePairs<String,String> = ["A":"Apple", "B":"Banana", "C":"City", "A": "Ant"] //-> 이렇게 타입추론으로 사용하면 항상 dictionary로 추론

/**
    dictionary와 차이점
 dictionary -> hashable 프로토콜 차용 / 순서 보장 X / 키 중복 X
 keyParis   -> 키 형식에 제한 X / 순서 보장 O / 키 중복 O -> LinkedHashMap? (key 관련 제약만 없다면)
 */

/*:
  ## KeyValuePair Basics
*/

kPairs.count
kPairs.isEmpty
kPairs.first { (elem) in
    return elem.key == "A"
}
//kPairs["A"]//이렇게 접근하면 안된다. Key가 중복되기 때문으로 보인다.
kPairs[0] //+ 정렬되어 있고, 순서가 보장되어 있기 때문이다.

for elem in kPairs{
    print(elem)
}

/**
 append 메소드 X
 insert 메소드 X
 update관련 메소드도 X
 
 
 KeyValueParis는 언제 사용할까?
 
 동일한 순서로 반복? 키 중복? 일 경우
 */

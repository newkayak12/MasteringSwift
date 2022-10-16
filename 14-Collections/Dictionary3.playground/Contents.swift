import UIKit


/*:
 # Comparing Dictionaries
 */

let a = ["A": "Apple", "B": "Banana", "C": "City"]
let b = ["A": "Apple", "C": "City", "B": "Banana"]
let c = ["A": "Apple", "C": "City", "B": "banana"]

 a == b
 a == c //대소문자 구분함

a.elementsEqual(c) { (lhs, rhs) in
    print(lhs.key, rhs.key) //dictionary는 정렬되어 있지 않기 때문에...
    return (lhs.key.caseInsensitiveCompare(rhs.key) == .orderedSame) && (lhs.value.caseInsensitiveCompare(rhs.key) == .orderedSame)
}

let aKeys = a.keys.sorted()
let bkeys = b.keys.sorted()
aKeys.elementsEqual(bkeys) { (lhs, rhs) in
    guard lhs.caseInsensitiveCompare(rhs) == .orderedSame else {
        return false
    }
    guard let left = a[lhs], let right = b[rhs],  left.caseInsensitiveCompare(right) == .orderedSame else {
        return false
    }
    return true
}

/** 딕셔너리가 정렬되어 있지 않다는 것을 명심해야함 */

/*:
 # Finding Elements
 */
let words = ["A":"Apple", "B": "Banana", "C": "City"]
let findClosure : ((String, String)) -> Bool = {
    //순서 보장 X, 둘 중 먼저 도달하는 걸 뱉는거임
    $0.0 == "B" || $0.1.contains("i")
}

words.contains(where: findClosure)
let r = words.first(where: findClosure)
r?.key
r?.value

words.filter(findClosure)
















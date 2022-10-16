import Foundation
/*:
 # Comparing Sets
 */

var a: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var b: Set = [1, 3, 5, 7, 9]
var c: Set = [2, 4, 6, 8, 10]
let d: Set = [1, 7, 5, 9, 3]

a == b
a != b

b == d //같은 요소, 다른 순서 -> true
b.elementsEqual(d)
//elementsEqual은 순서대로 비교함..
//-> Array로 바꿔서 비교..



/**
 Set은 집합에 특화
 */
a.isSubset(of: a) //부분집합
a.isStrictSubset(of: a) //진부분집합

b.isSubset(of: a)
b.isStrictSubset(of: a)

a.isSuperset(of: a) //상위 집합
a.isStrictSuperset(of: a) // 진 상위집합

a.isSuperset(of: b)
a.isStrictSuperset(of: b)

a.isSuperset(of: c)
a.isStrictSuperset(of: c)

a.isDisjoint(with: b) // 교집합 : false / 서로소 : true
a.isDisjoint(with: c)
b.isDisjoint(with: c)
/*:
 # Combining Sets
 */

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

//합집합
var result = b.union(c) //새로운 Set을 반환

result = b.union(a)

b.formUnion(c) //원본 Set을 변경함


a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

//교집합
result = a.intersection(b)
result = c.intersection(b) //교집합이 없으면 빈 Set

//역시 원본을 변경하려면
a.formIntersection(b)
b.formIntersection(c)

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

//여집합
result = a.symmetricDifference(b)
result = c.symmetricDifference(b)

a.formSymmetricDifference(b)


a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

//차집합

result = a.subtracting(b)
/** 여기는 formSubtrat가 없음*/
a.subtract(b)

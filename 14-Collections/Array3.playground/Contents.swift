import UIKit

/*:
 # Comparing Arrays
 */

let a = ["A", "B", "C"]
let b = ["a", "b", "c"]


a == b
a != b

a.elementsEqual(b)
a.elementsEqual(a){
    return $0.compare($1,options: [.caseInsensitive]) == .orderedSame
}

/*:
 # Finding Elements
 */

let nums = [1,2,3,1,4,2,3,5,8,9,4,6,0]
nums.contains(1)
nums.contains(2311)
nums.contains{
    return $0 % 2 == 0
}
nums.first { num in
    return num % 2 == 0
}
//find가 아니라 first라니.. 가장 먼저 검색된이라는 느낌...?
nums.firstIndex { num in
    return num % 2 == 0
}

nums.firstIndex(of: 1)
nums.lastIndex(of: 8)



/*:
 # Sorting on Array
 */

nums.sorted()
nums.sorted { first, second in
    return first < second
}

nums.sorted { a, b in
    return a > b
}
nums.sorted().reversed()//기존 메모리 공유, 새로운 배열 리턴하지 않음
[Int](nums.sorted().reversed())

var mutableNums = nums
mutableNums.sort()
mutableNums.reverse()

mutableNums
mutableNums.swapAt(0, 1)

mutableNums.shuffle()





















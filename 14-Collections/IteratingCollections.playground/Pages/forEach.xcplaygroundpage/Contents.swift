//
//: [Previous](@previous)

import Foundation

/*:
 ## forEach
 */
print("========== Array =======")
let arr = [1,2,3]
arr.forEach { num in
    print(num)
}

print("========== Set =======")
let set: Set = [1,2,3]
set.forEach { num in
    print(num)
}

print("========== Dictionary =======")
let dict = ["A":1, "B":2, "C":3]
dict.forEach { (k,v) in
    print("Key: \(k), Value: \(v)")
}
dict.forEach { (elem) in
    print("Key: \(elem.key), Value: \(elem.value)")
}

func withForin(){
    print(#function)
    let arr = [1,2,3]
    for num in arr {
        print(num)
        return
    }
}



func withForEach(){
    print(#function)
    let arr = [1,2,3]
    arr.forEach { num in
        print(num)
        return
    }
}


/**
            > for... in  VS. forEach
    1. for...in은 break;, continue; 사용가능
    2. for...in은 return 하면 반복이 종료, forEach는 반복에는 영향 X 클로저에 영향
 
 */

print("------------ for...in VS. forEach ---------------")
withForin()
withForEach()


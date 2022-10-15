//: [Previous](@previous)

import Foundation

print("Start1")
DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {print("End1")}) //js의 Promise와 비슷하네요
//..뭘까요?
// 조금 더 쉽게 보면
DispatchQueue.main.asyncAfter(deadline: .now() + 5){
    print("End1")
}
//Syntax Optimization이라고 한다. 

print("Start2")
Thread.sleep(until: .now + 5) //java에서 자주 쓰던 느낌
print("End2")



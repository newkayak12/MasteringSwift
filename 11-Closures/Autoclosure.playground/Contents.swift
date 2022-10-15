import UIKit

/*:
 # Autoclosure
 */
/**
 파라미터로 전달되는 값을 클로저로 자동 래핑해주는
 */


func random() -> Int {
   return Int.random(in: 0...100)
}

func takeResult(param: Int) {
   print(#function)
   print(param)
}
takeResult(param: random())
print("-------------------------------")




func takeClosure(param: () -> Int) {
   print(#function)
   print(param())
}

takeClosure(param: { Int.random(in: 0...100) })
print("-------------------------------")


func takeAutoClosure(param: @autoclosure () -> Double){//이떄는 클로저를 던질 수 없다. 어차피 컴파일러가 래핑할 것이라는 뜻이기 때문
    print(#function)
    print(param())
}

takeAutoClosure(param: Double.random(in: 0...100))
//brace를 생략하고 코드를 간단하게 작성하려고

//swfit에서 autoClosure를 사용하는 대표적인 예시는 assert이다.

let rnd = random()
assert(rnd > 30)
print("-------------------------------")

func takeAutoClosureAync(param: @autoclosure @escaping () -> Bool){//autoClosure는 nonEscaping 특성이 있어서 따로 추가해야함
                                                                     //autoClosure는 파라미터 타입을 선언하면 사용할 수 없다. 단, return 은 자유롭게 선언할 수 있다.
    print(#function)
    DispatchQueue.main.asyncAfter(deadline: .now() + 1){
        print(param())
    }
}

takeAutoClosureAync(param: Double.random(in: 0...10) > 5)

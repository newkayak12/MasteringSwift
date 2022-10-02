/*:
# Scope
   : 자신이 속한 범위 내에서 변수명이 중복되면 아니된다.
   -> Brace ({})로 구분된다.
## GlobalScope
   {} 구분이 없다.
## LocalScope
   {}로 구분되며, nestedScope가 있다.
 
 ### 규칙
 - 같은 스코프 내에서 동일한 이름으로 선언할 수 없다.
 - 동일 한 스코프 내에서 선언한 변수로 접근할 수 있다.
 - 동일한 스코프에서는 아직 선언되지 않은 변수 사용 불가능하다.
 - 상위 스코프에서는 하위 스코프에 바로 접근이 불가능하다.
 - 서로 다른 범위에 동일한 이름이 존재한다면 가장 가까운 것을 사용한다.
 */

/*:
 # Scope
 */

// #1 -> global


let g1: Int = 123
//g1이라는 이름을 global에서 사용할 수 없다. 하나의 네임스페이스에서 이름은 유일해야 한다.
print(g2) //-> 아직 선언 전이므로 'g2'를 사용할 수 없다.
// !! g2 선언까지 포함하여 실행하면 이 부분을 사용할 수 있긴 하다. 물론 지양해야한다.


//print(local1)

func doSomething() {
   // #3 -> local/function
    
    let g1 = "9t02"
   print(g1, g2)
    //local에서는 global을 참조할 수 있다.
    
    let local1 = 1234
    
   if true {
      // #4 -> nested
       print(local1)
//       print(local2)//아직 선언되지 않은 경우  사용 불가능
       
       let local3 = 1234
   }
   
   // #5 -> local/function
    let local2 = 123444
//    print(local3) //이미 해제된 것을 사용할 수 없으며 상위 스코프는 하위 스코프에 바로 접근할 수 없다.
    
}


// #2 -> global
//let g1: Int = 2345 //Invalid redeclaration
let g2: Int = 41231
print(g1,"/", g2) //g1, g2에서 모두 선언되었으므로 사용 가능하다.

struct Scope {
   // #6 -> local
//   print(g1, g2)
//    엄밀히 말하면 구조체 안에서 이 부분은 선언을 위한 곳이므로 (선언 스코프 - Declaration Scope), 글로벌이든 뭐든 사용 불가 _ 선언이 와야 한다.
   func doSomething() {
      // #7 -> nested
       print(g1,g2) //여기에서는 사용 가능
   }
}

doSomething()

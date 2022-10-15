import UIKit

/*:
 # Capturing Values
 */

/**
 클로저에서 값을 캡쳐하기

 global function 값 캡쳐 X
 nested function은 자신을 포함하고 있는 함수 바디의 값 캡쳐
 
 클로저 표현식으로 쓴 클로저는 클로저 외부의 값을 캡쳐
 
 obj-c : 값을 복사하는 식으로 캡쳐 -> Deep Clone
 swift : 참조를 캡쳐 -> Swallow Clone
 */


var num = 0;

let c = {
    //obj-c => num에 영향을 주지 않는다.
    //check point #2에서는 0이 될 것
    
    //swft => num의 참조 가져오기에 값이 변경됨
    num += 1;
    print("check Point #1: \(num)")
}
c();

print("check point #2: \(num)")























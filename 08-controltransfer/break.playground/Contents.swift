import UIKit

/*:
 # break
 */


let num: Int = 1
switch num {
    case 1 ... 10:
        print("begin")
        if ( num % 2 != 0){
            break;
        }
        
        print("end")
    default:
        break;
}
print("done")

for index in 1 ... 10 {
    print(index)
    if ( index > 1 ){
        break;
    }
}


for i in 1 ... 10 {
    print("outer : \(i)")
    for j in 1 ... 10 {
        print(" ᄂinner : \(j)")
        
        if ( j > 1 ){
            break; // 가장 인접한 반복문을 종료
        }
    }
}






















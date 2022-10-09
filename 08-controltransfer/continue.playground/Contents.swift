
import UIKit

/*:
 # continue
 */

for index in 1 ... 10 {
    if( index % 2 == 0 ){
        continue;
    }
    print(index)
}


for i in 1 ... 10 {
    print("outer \(i)")
    for j in 1 ... 10 {
        if( j % 2 == 0 ){
            continue
        }
        print(" inner \(j)")
    }
}





















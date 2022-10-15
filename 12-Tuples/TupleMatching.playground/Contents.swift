import UIKit

/*:
 # Tuple Matching
 */

let resolution = (3840.0, 2160.0)
if resolution.0 == 3840 && resolution.1 == 2160 {
    print("4K")
}

//tupleMatchin
switch resolution {
    case (3840, 2160):
        print("4K")
    default:
        break;
}


//switchCase usage
switch resolution {
    case let (w, h) where w/h == 16.0/9.0:
        print("16:9")
    case (_, 1080):
        print("1080p")
    case (3840...4096, 2160):
        print("4K")
    default:
        break;
}























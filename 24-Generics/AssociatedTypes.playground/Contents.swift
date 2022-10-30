import UIKit

/*:
 # Associated Types
 ![associatedtype](associatedtype.png)
 */

protocol QueueCompatible {
    associatedtype Element: Equatable //연관 형식 제약
   func enqueue(value: Element)
   func dequeue() -> Element?
}


class IntegerQueue: QueueCompatible {
    typealias Element = Int
    func enqueue(value: Int) {
        
    }
    func dequeue() -> Int? {
        return 0
    }
}

/**
 typealias AssociatedTypeName = Type
 */
//연관 형식 추론
class DoubleQueue: QueueCompatible{
    func enqueue(value: Double) {
    
    }
    func dequeue() -> Double? {
        return 0.0
    }
}










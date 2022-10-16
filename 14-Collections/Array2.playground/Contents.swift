//
import UIKit

/*:
 # Adding Elements
 */

var alphabet = ["A", "B", "C"]
alphabet.append("E")
//alphabet.append(1)
alphabet.append(contentsOf: ["F","G"])
alphabet.insert("D", at: 3)
alphabet.insert(contentsOf: ["a","b"], at: 0)

alphabet[0...2] = ["x","y","z"]
alphabet

alphabet.replaceSubrange(0...2, with: ["a","b","c"])
alphabet

alphabet[0..<1] = []
alphabet


/*:
 # Removing Elements
 */

alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet.remove(at: 2)
alphabet

alphabet.removeFirst()
alphabet.removeFirst(2)
alphabet.removeLast()
alphabet.removeLast(2)

alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet.removeAll()
//alphabet.removeLast() //optionalString이 아니라서 runtimeError
alphabet.popLast() //optional

alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet.popLast()

alphabet.removeSubrange(3...5)
alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet[0 ... 2] = []










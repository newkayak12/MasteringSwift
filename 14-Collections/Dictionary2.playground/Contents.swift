//
import UIKit

/*:
 # Adding Keys and Values
 */

var words = [String:String]()
words["A"] = "Apple"
words["B"] = "Banana"

words.count
words

words["B"] = "Ball"
words

words.updateValue("City", forKey: "C")
words.updateValue("Curry", forKey: "C")
words


/*:
 # Removing Keys and Values
 */

words["B"] = nil
words

words["Z"] = nil
words

words.removeValue(forKey: "A")
words.removeValue(forKey: "A")
words

words.removeAll()

import Foundation

/*:
 # Property Wrapper
 */

struct PlayerSetting {
   var initialSpeed: Double {
      get {
         return UserDefaults.standard.double(forKey: "initialSpeed")
      }
      set {
         UserDefaults.standard.set(newValue, forKey: "initialSpeed")
      }
   }
   
   var supportGesture: Bool {
      get {
         return UserDefaults.standard.bool(forKey: "supportGesture")
      }
      set {
         UserDefaults.standard.set(newValue, forKey: "supportGesture")
      }
   }
}


var currentSetting = PlayerSetting()
currentSetting.initialSpeed = 1.0
currentSetting.initialSpeed

currentSetting.initialSpeed = 1.5
currentSetting.initialSpeed

currentSetting.supportGesture
currentSetting.supportGesture = true
currentSetting.supportGesture




//: [Next](@next)

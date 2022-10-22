
import Foundation

//: [Previous](@previous)



/*:
# Property Wrapper
*/


struct PlayerSetting {
    @UserDefaultsHelper(key: "initialSpeed", defaultValue: 1.0)
   var initialSpeed: Double
    @UserDefaultsHelper(key: "supportGesture", defaultValue: true)
   var supportGesture: Bool
    
    func resetAll(){
        _initialSpeed.reset() //PropertyWrapper 자체에 접근해야한다. _를 붙이면 PropertyWrapper에 접근할 수 있다.
        _supportGesture.reset() //이름만으로 접근하면 실제 값에 접근한다.
    }
}

@propertyWrapper//컴파일러가 필요한 코드를 자동으로 추가해준다.
struct UserDefaultsHelper<Value> {
    let key: String
    let defaultValue: Value
    
    var wrappedValue: Value{
        get{  //값을 관리하는 방법을 바꾸려면 이 곳을 바꾸면 된다.
            UserDefaults.standard.object(forKey: key) as? Value ?? defaultValue
        }
        set{
            UserDefaults.standard.setValue(newValue, forKey: key)
        }
    }
    func reset(){
        UserDefaults.standard.setValue(defaultValue, forKey: key)
    }
    //access level이 private인 것을 해결하기 위해서
    var projectedValue: Self {return self} //이름은 꼭 projectedValue로 해야한다.
}
//값을 읽고 쓰는 작업은 PropertyWrapper에 위임 따라서 직접 초기화하지 않음
var currentSetting = PlayerSetting()

currentSetting.initialSpeed
currentSetting.initialSpeed = 1.5
currentSetting.initialSpeed

currentSetting.supportGesture
currentSetting.supportGesture = false
currentSetting.supportGesture

//currentSetting._init //타입 밖에서는 PropertyWrapper에 접근할 수 없다. (Private로 설정되어있음)
currentSetting.$initialSpeed.reset() //projectedValue는 $으로 접근



//: [Next](@next)

import UIKit
import Foundation

// Interview Question - 1
func dispatchTest() {
    print(1)
    DispatchQueue.global().async {
        print(2)
        DispatchQueue.main.async {
            print(3)
        }
        print(4)
        DispatchQueue.main.sync {
            print(5)
        }
        DispatchQueue.main.async {
            print(6)
            DispatchQueue.main.sync {
                print(7)
            }
        }
        print(8)
    }
    print(9)
}
//dispatchTest()


// Interview Question - 2
// Custom higher order function map
extension Array {
    func customMap<T>( _ transform: (T) -> T) -> [T] {
        var result = [T]()
        
        for element in self {
            let newValue = transform(element as! T)
            result.append(newValue)
        }
        
        return result
    }
}
func customHigherOrder() {
    let arr = [2,3,4,5,6,7]
    arr.customMap { $0 * 2 }
    print(arr)
}
//customHigherOrder()


// Interview Question - 3
func captureList() {
    var str = "Swift"
    var closure = { [str] in
        print("Inside closure", str)
    }
    str = "Objective-C"
    closure()
    print("Outside closure", str)
}
//captureList()


// Interview Question - 4
class A {
    let name = "Name"
}
class B {
    weak var obj: A?
    func someFunc() {
        obj = A()
        print(obj?.name)
    }
}
//print(B().someFunc())


func hasIntegerSquareRoot(_ number: Int) -> Bool {
    guard number > 0 else { return false }
    
    var s = 0
    var e = number
    while s <= e {
        let m = (s + e) / 2 // m = 24
        
        if number == (m * m)   {
            return true
        }
        
        if m * m < number {
            s = m + 1
        }
        else {
            e = m - 1 // e =
        }
    }
    
    return false
}
hasIntegerSquareRoot(16)

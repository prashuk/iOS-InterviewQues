var optionalNumber: Int?
//optionalNumber = 23

// IF LET

if let number = optionalNumber {
    print("I have a value, it is \(number)")
} else {
    print("I do not have the value, it is nil")
}


// GUARD

func tripleNumber(number: Int?) {
    guard let number = number else { // early exiting
        print("Function does not execute")
        return
    }
    
    print("Triple number is \(number * 3)")
}

tripleNumber(number: optionalNumber)


// FORCED UNWRAPPING

//print(optionalNumber!) // 1000% sure that the optional has value other nil error occur


// COALESCING OPERATOR

print(optionalNumber ?? 46)

// OPTIONAL CHANING

struct Device {
    var name: String
}

var myPhone: Device?
let deviceName = myPhone?.name
// deviceName is optional unwrap it using any of the above method

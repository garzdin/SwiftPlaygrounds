//: Odd or even

import UIKit

func isEvenNumber(number: Int) -> Bool {
    return number % 2 == 0
}

let isEven = isEvenNumber

func numberWithString(numbers: [Int], numbersFunction: (Int) -> Bool) {
    for number in numbers {
        if(numbersFunction(number) == true) {
            print("The number \(number) is an even number!")
        } else {
            print("The number \(number) is an odd number!")
        }
    }
}

let numbersArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numberWithString(numbers: numbersArray, numbersFunction: isEven)

func surroundingFunction() -> (Int, String) -> Bool {
    var runTime = 0
    func printBody(number: Int, text: String) -> Bool {
        runTime += 1
        if(number > 10 && text != "") {
            print("True: \(runTime)")
            return true
        } else {
            print("False: \(runTime)")
            return false
        }
    }
    return printBody
}

let runFunction = surroundingFunction()

runFunction(11, "awesome")
runFunction(11, "awesome")
runFunction(11, "awesome")
runFunction(11, "awesome")
runFunction(11, "awesome")
runFunction(11, "awesome")
runFunction(9, "awesome")
runFunction(9, "awesome")
runFunction(9, "awesome")
runFunction(9, "awesome")
runFunction(9, "awesome")
runFunction(9, "awesome")


func differenceBetweenNumbers(a: Int, b:Int) -> (Int) {
    return a - b
}

// Enter your code below
func mathOperation(mathFunc: (Int, Int) -> (Int), a: Int, b: Int) -> Int {
    return mathFunc(a, b)
}

let difference = mathOperation(mathFunc: differenceBetweenNumbers, a: 10, b: 5)

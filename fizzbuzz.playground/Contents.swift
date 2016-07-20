// FuzzBuzz Game

import UIKit

let numbers = 1...100

for number in numbers {
    if number % 3 == 0 {
        print("Fizz")
    } else if number % 5 == 0 {
        print("Buzz")
    } else if number % 3 == 0 && number % 5 == 0 {
        print("FizzBuzz")
    } else {
        print(number)
    }
}
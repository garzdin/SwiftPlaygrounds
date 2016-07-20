//: Playground - noun: a place where people can play

import UIKit

func isDivisable(divident: Int, divisor: Int) -> Bool? {
    if divident % divisor == 0 {
        return true
    } else {
        return nil
    }
}

if let result = isDivisable(divident: 10, divisor: 2) {
    print("Divisable")
} else {
    print("Not Divisable")
}

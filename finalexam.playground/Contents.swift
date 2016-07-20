//: Playground - noun: a place where people can play

import UIKit

class Shape {
    let sides: Int
    let name: String
    
    init(name: String, sides: Int) {
        self.sides = sides
        self.name = name
    }
}

class Square: Shape {
    var sideLength: Double
    var area: Double {
        get {
            return sideLength * sideLength
        }
        set {
            sideLength = sqrt(newValue)
        }
    }
    
    init(name: String, sides: Int, sideLength: Double) {
        self.sideLength = sideLength
        super.init(name: name, sides: sides)
    }
    
    convenience init(sideLength: Double) {
        self.init(name: "Square", sides: 4, sideLength: sideLength)
    }
}

let square = Square(sideLength: 20)
square.name
square.sides
square.sideLength
square.area
square.area = 100
square.sideLength
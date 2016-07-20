//: Playground - noun: a place where people can play

import UIKit

enum Status {
    case Doing
    case Pending
    case Completed
    
    init () {
        self = .Doing
    }
}

struct Task {
    let description: String
    var status: Status
    
    init(description: String) {
        self.description = description
        self.status = Status()
    }
}

var task = Task(description: "Doing the dishes")
task.status = .Completed
task.status



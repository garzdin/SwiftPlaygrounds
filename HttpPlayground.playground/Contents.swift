//: Playground - noun: a place where people can play

import Foundation

let headers = [
    "cache-control": "no-cache",
    "postman-token": "c1923a26-9595-1405-214d-6298f679191d"
]

var request = NSMutableURLRequest(url: URL(string: "http://127.0.0.1:8888/da/signup/")!, cachePolicy: .useProtocolCachePolicy, timeoutInterval: TimeInterval(10.0))

request.httpMethod = "GET"
request.allHTTPHeaderFields = headers

let session = URLSession.shared()
let dataTask = session.dataTask(with: request as URLRequest, completionHandler: {
    (data, response, error) -> Void in
    if (error != nil) {
        print(error)
    } else {
        let httpResponse = response as? HTTPURLResponse
        print(httpResponse)
    }
})

dataTask.resume()

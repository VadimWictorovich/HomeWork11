import Foundation

let dic: [String: Any] = ["first": 1, "second": "2"]
var someValue: Double = 0
for (_, value) in dic {
    if let st = value as? String {
        if let someD = Double(st) {
            someValue += someD
        }
    }
}

print(someValue)

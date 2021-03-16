//https://www.hackerrank.com/challenges/time-conversion/problem

import Foundation

func timeConversion(s: String) -> String {
    
    var result = String()
    
    let hoursIndex = s.index(s.startIndex, offsetBy: 2)
    let hoursString = s.prefix(upTo: hoursIndex)
    let hoursInteger = Int(hoursString) ?? 0
    
    let zoneIndex = s.index(s.endIndex, offsetBy: -2)
    let zoneString = s.suffix(from: zoneIndex)
    
    if zoneString == "PM" {
        
        if hoursInteger == 12 {
            result = "12"
        } else {
            result = String(format: "%02d", hoursInteger + 12)
        }
    }
    
    if zoneString == "AM" {
        
        if hoursInteger == 12 {
            result = "00"
        } else {
            result = String(format: "%02d", hoursInteger)
        }
    }
    
    result = result + s[hoursIndex..<zoneIndex]
    
    return result
}

let test = "06:12:12AM"

print(timeConversion(s: test))


//https://stackoverflow.com/questions/25566581/leading-zeros-for-int-in-swift
//https://www.hackingwithswift.com/example-code/strings/how-to-specify-floating-point-precision-in-a-string
//https://www.hackingwithswift.com/example-code/language/how-to-convert-a-substring-to-a-string
//https://stackoverflow.com/questions/24051314/precision-string-format-specifier-in-swift
//https://useyourloaf.com/blog/swift-string-cheat-sheet/



let array = [1, 2, 4, 4, 9, 44, 10, 10]

let set = Set(array.map { $0 })

let set1 = Set(array)

print("\(array)")
print("\(set)")
print("\(set1)")

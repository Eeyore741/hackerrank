import Foundation

//https://www.hackerrank.com/challenges/the-birthday-bar/problem

// Complete the birthday function below.
func birthday(s: [Int], d: Int, m: Int) -> Int {
    guard s.count >= m else { return 0 }
    guard s.reduce(0, +) >= d else { return 0 }
    
    var result: Int = 0
    
    for (index, _) in s.enumerated() {
        guard index + m <= s.count else { break }
        
        let subArray = s[index..<index+m]
        let subSum = subArray.reduce(0, +)
        
        guard subSum == d else { continue }
        
        result += 1
    }

    return result
}

birthday(s: [2, 2, 1, 3, 2], d: 4, m: 2)
birthday(s: [1, 2, 1, 3, 2], d: 3, m: 2)
birthday(s: [1, 1, 1, 1, 1, 1], d: 3, m: 2)
birthday(s: [4], d: 4, m: 1)

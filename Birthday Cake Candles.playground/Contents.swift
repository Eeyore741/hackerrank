//https://www.hackerrank.com/challenges/birthday-cake-candles/problem

import Foundation

func birthdayCakeCandles(candles: [Int]) -> Int {
    
    var tallestCandles = [Int]()
    var currentTallest: Int = 0
    
    candles.forEach { (i) in
        
        guard i != currentTallest else {
            return tallestCandles.append(i)
        }
        
        if i > currentTallest {
            tallestCandles.removeAll()
            tallestCandles.append(i)
            currentTallest = i
        }
    }
    
    return tallestCandles.count
}

let test = [0, 1, 1, 3, 5, 5, 1, 5, 5]

print("\(birthdayCakeCandles(candles: test))")

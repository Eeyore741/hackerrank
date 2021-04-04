import Foundation

//https://www.hackerrank.com/challenges/electronics-shop/problem

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var result: Int = -1
    
    for k in keyboards {
        for d in drives {
            if k + d > result && k + d <= b {
                result = k + d
            }
        }
    }
    
    return result
}

getMoneySpent(keyboards: [3, 1], drives: [5, 2, 8], b: 10)
getMoneySpent(keyboards: [4], drives: [5], b: 5)

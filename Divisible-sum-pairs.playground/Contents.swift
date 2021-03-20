import Foundation

//https://www.hackerrank.com/challenges/divisible-sum-pairs/problem

// Complete the divisibleSumPairs function below.
func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var result: Int = 0
    
    for (indexI, i) in ar.enumerated() {
        for (indexJ, j) in ar.enumerated() {
            guard indexJ != indexI else { continue }
            guard (i + j) % k == 0 else { continue }
            
            result += 1
        }
    }
    
    return result / 2
}

divisibleSumPairs(n: 0, k: 5, ar: [1, 2, 3, 4, 5, 6])

let split =
"""
50 44 77 66 70 58 9 59 74 82 87 15 10 95 10 81 2 4 87 85 28 96 76 18 86 91 94 59 19 58 98 48 38 70 36 38 66 9 72 54 23 23 17 18 8 16 9 56 12 59 73 31 10 62 83 84 28 91 29 22 73 22 3 75 26 31 93 57 15 32 46 74 99 10 15 58 60 53 41 49 71 59 4 20 38 78 1 94 76 5 70 68 42 34 77 28 19 25 20 15
"""
    .split(separator: " ").compactMap { (s: Substring) -> Int? in
        Int(s)
    }
let k = 66
divisibleSumPairs(n: 0, k: k, ar: split)

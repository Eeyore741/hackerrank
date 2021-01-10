///https://www.hackerrank.com/challenges/simple-array-sum/problem

import Foundation

let arr = [1, 2, 3]

let sum = arr.reduce(0){ $0 + $1 }

print(sum)

/*
 * Complete the simpleArraySum function below.
 */
func simpleArraySum(ar: [Int]) -> Int {
    return ar.reduce(0) { $0 + $1 }
}

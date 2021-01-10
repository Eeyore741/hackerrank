//https://www.hackerrank.com/challenges/diagonal-difference/problem

import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {
    
    var result: Int = 0
    var left: Int = 0
    var right: Int = 0
    
    let size: Int = arr[0][0]
    let matrix: [[Int]] = Array(arr[1..<arr.count])
    
    for i in 0..<size {
        
        var row: [Int] = []
        var value: Int = 0

        row = matrix[i]
        value = row[i]
        left += value

        row = matrix[i]
        value = row[size - (i + 1)]
        right += value
    }
    
    result = abs(left - right)
    
    print(matrix.count)
    return result
}

let matrix = [
    [3],
    [11, 2, 4],
    [4, 5, 6],
    [10, 8, -12]
]

diagonalDifference(arr: matrix)

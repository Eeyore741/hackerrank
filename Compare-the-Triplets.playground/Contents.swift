//https://www.hackerrank.com/challenges/compare-the-triplets/problem

import Foundation

// Complete the compareTriplets function below.
func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    
    var aScore = 0
    var bScore = 0
    
    for i in 0...2 {
        
        aScore = a[i] > b[i] ? aScore + 1 : aScore
        bScore = b[i] > a[i] ? bScore + 1 : bScore
    }
    
    return [aScore, bScore]
}

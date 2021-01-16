//https://www.hackerrank.com/challenges/mini-max-sum/problem

import Foundation

func miniMaxSum(arr: [Int]) -> Void {
    
    var smallestValue = -1
    var biggestValue = -1
    
    arr.forEach { (i) in
        
        if smallestValue > i || smallestValue < 0 {
            smallestValue = i
        }
        
        if biggestValue < i {
            biggestValue = i
        }
    }
    
    let smallSum = arr.reduce(0) { (result, i) -> Int in
        guard i != biggestValue else {
            biggestValue = -1
            return result
        }
        return result + i
    }
    
    let bigSum = arr.reduce(0) { (result, i) -> Int in
        guard i != smallestValue else {
            smallestValue = -1
            return result
        }
        return result + i
    }
    
    print("\(smallSum) \(bigSum)")
}

miniMaxSum(arr: [1, 2, 3])

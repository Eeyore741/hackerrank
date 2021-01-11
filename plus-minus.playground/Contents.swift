//https://www.hackerrank.com/challenges/plus-minus/problem

import Foundation

func plusMinus(arr: [Int]) -> Void {
    
    var positiveRatio: Double = 0.0
    var negativeRatio: Double = 0.0
    var zeroRatio: Double = 0.0
    
    arr.forEach { (element: Int) in
        
        if element > 0 { positiveRatio += 1 }
        if element < 0 { negativeRatio += 1 }
        if element == 0 { zeroRatio += 1 }
    }
    
    positiveRatio = positiveRatio / Double(arr.count)
    negativeRatio = negativeRatio / Double(arr.count)
    zeroRatio = zeroRatio / Double(arr.count)
    
    [positiveRatio, negativeRatio, zeroRatio].forEach { (element: Double) in
        
        let formatted = String(format: "%.6f", element)
        print(formatted)
    }
}

plusMinus(arr: [1,1,0,-1,-1])

//https://www.hackerrank.com/challenges/kangaroo/problem

import Foundation

// Complete the kangaroo function below.
func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {

    var result = "NO"
    
    var currentX1 = x1
    var currentX2 = x2
    
    for _ in 0...10000 {
        
        currentX1 += v1
        currentX2 += v2
        
        if currentX1 == currentX2 {
            result = "YES"
            break
        }
    }
    
    return result
}

kangaroo(x1: 0, v1: 2, x2: 5, v2: 3)
kangaroo(x1: 0, v1: 3, x2: 4, v2: 2)
kangaroo(x1: 14, v1: 4, x2: 98, v2: 2)

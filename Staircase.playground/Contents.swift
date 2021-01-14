//https://www.hackerrank.com/challenges/staircase/problem

import Foundation

func staircase(n: Int) -> Void {
    
    for i in stride(from: 1, through: n, by: 1) {
        
        var result = String()
        
        var hashes = String()
        for _ in stride(from: 1, through: i, by: 1) {
            hashes += "#"
        }
        
        var spaces = String()
        for _ in stride(from: i, to: n, by: 1) {
            spaces += " "
        }
        
        result = spaces + hashes
        print(result)
    }
}

staircase(n: 5)

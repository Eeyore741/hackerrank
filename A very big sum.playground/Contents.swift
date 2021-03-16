//https://www.hackerrank.com/challenges/a-very-big-sum/problem

import Foundation

func aVeryBigSum(ar: [Int]) -> Int {

    return ar.reduce(Int()) { result, element -> Int in
        result + element
    }
}

print(aVeryBigSum(ar: [0, 1, 2 ,3]))

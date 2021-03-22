import Foundation

//https://www.hackerrank.com/challenges/migratory-birds/problem

// Complete the migratoryBirds function below.
func migratoryBirds(arr: [Int]) -> Int {
    var result: Int = 0
    
    var dictionary: [Int: Int] = [:]
    
    arr.forEach { (element: Int) in
        guard let value = dictionary[element] else {
            return dictionary[element] = 0
        }
        
        dictionary[element] = value + 1
    }
    
    var maxAppearance: Int = 0
    dictionary.keys.forEach { (birdId: Int) in
        guard let appearance = dictionary[birdId] else { return }
        
        if maxAppearance < appearance {
            maxAppearance = appearance
            result = birdId
        } else
        if maxAppearance == appearance && birdId < result {
            maxAppearance = appearance
            result = birdId
        }
    }
    
    return result
}

migratoryBirds(arr: [1, 1, 2, 2, 2, 5])

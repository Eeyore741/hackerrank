import Foundation

//https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem

// Complete the breakingRecords function below.
func breakingRecords(scores: [Int]) -> [Int] {
    var result: [Int] = []
    
    var maxScoreBreaks: Int = 0
    var minScoreBreaks: Int = 0
    
    var maxScore: Int = -1
    var minScore: Int = -1
    
    for (index, score) in scores.enumerated() {
        if index == 0 {
            maxScore = score
            minScore = score
            continue
        }
        
        if minScore > score {
            minScore = score
            minScoreBreaks += 1
        }
        if maxScore < score {
            maxScore = score
            maxScoreBreaks += 1
        }
    }
    
    result = [maxScoreBreaks, minScoreBreaks]
    return result
}

print("Breaks are \(breakingRecords(scores: [5, 5, 5]))")
print("Breaks are \(breakingRecords(scores: [3, 4, 21, 36, 10, 28, 35, 5, 24, 42]))")
print("Breaks are \(breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1]))")

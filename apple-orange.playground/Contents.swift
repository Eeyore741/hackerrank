import Foundation

// Complete the countApplesAndOranges function below.
func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    
    let houseRange: ClosedRange<Int> = s...t
    let appleTree = a
    let orangeTree = b
    
    var applesOnHouse: Int = 0
    var orangesOnHouse: Int = 0
    
    ///
    apples.forEach { (apple: Int) in
        guard apple > 0 else { return }
        
        if houseRange.contains(apple + appleTree) {
            applesOnHouse += 1
        }
    }
    
    oranges.forEach { (orange: Int) in
        guard orange < 0 else { return }
        
        if houseRange.contains(orangeTree + orange) {
            orangesOnHouse += 1
        }
    }
    ///
    
    print("\(applesOnHouse)")
    print("\(orangesOnHouse)")
}

countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2, 2, 1], oranges: [-5, 6])

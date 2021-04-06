import Foundation
//https://www.hackerrank.com/challenges/bon-appetit/problem

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    var brian: Double = 0
    var anna: Double = 0
    
    for (i, e) in bill.enumerated() {
        if i == k {
            brian += Double(e)
        } else {
            brian += Double(e) / 2
            anna += Double(e) / 2
        }
    }
    
    if anna == Double(b) {
        print("Bon Appetit")
    } else {
        print("\(Int(Double(b) - anna))")
    }
}

bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 12)

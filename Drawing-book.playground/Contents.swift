import Foundation

//https://www.hackerrank.com/challenges/drawing-book/problem

func pageCount(n: Int, p: Int) -> Int {
    var result: Int = 0
    
    var ltr: Int = 0

    for i in (0...n) {
        if i % 2 == 0 && i > 1 {
            ltr += 1
        }
        if i == p {
            break
        }
    }
    
    var rtl: Int = 0
    
    for i in (0...(n % 2 == 0 ? n + 1 : n)).reversed() {
        if i % 2 != 0 && i < n {
            rtl += 1
        }
        if i == p {
            break
        }
    }
    
    result = min(rtl, ltr)
    return result
}

pageCount(n: 5, p: 4)
pageCount(n: 6, p: 2)
pageCount(n: 3, p: 1)
pageCount(n: 5, p: 3)
pageCount(n: 6, p: 2)

import Foundation

//https://www.hackerrank.com/challenges/day-of-the-programmer/problem

// Complete the dayOfProgrammer function below.
func dayOfProgrammer(year: Int) -> String {
    var result: String = ""
    var day: String = "13"
    var month: String = "09"
    
    switch year {
    case 1700...1917:
        if year % 4 == 0 {
            day = "12"
        }
    case 1918:
        month = "08"
        day = "31"
    case 1919...2700:
        if year % 4 == 0, year % 100 != 0 {
            day = "12"
        }
    default:
        fatalError()
    }
    
    result = "\(day).\(month).\(String(year))"
    return result
}

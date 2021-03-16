import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    
    var result: [Int] = []
    
    func isFailingGrade(_ grade: Int) -> Bool {
        return (0...37).contains(grade)
    }
    
    grades.forEach { (grade: Int) in
        
        var outputGrade = grade
        
        if isFailingGrade(grade) == false {
            
            for increment in (1...2) {
                
                let incGrade = grade + increment
                
                if (incGrade % 5) == 0 {
                    
                    outputGrade = incGrade
                    continue
                }
            }
        }
        result.append(outputGrade)
    }

    return result
}

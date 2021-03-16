import Foundation

//https://www.hackerrank.com/challenges/between-two-sets/problem
//https://www.geeksforgeeks.org/lcm-and-hcf
//https://www.calculatorsoup.com/calculators/math/lcm.php
//https://www.calculatorsoup.com/calculators/math/gcf.php

func getTotalX(a: [Int], b: [Int]) -> Int {
    
    func splitOf(_ number: Int) -> [Int] {
        var result: [Int] = []
        var num = number
        
        while num > 1 {
            for i in 2...num {
                if num % i == 0 {
                    num = num / i
                    result.append(i)
                    break
                }
            }
        }
        
        return result
    }
    
    func lcmOf(_ integers: [Int]) -> Int {
        var result = 0
        var array: [Int] = []
        var splittedIntegers: [[Int]] = []
        
        integers.forEach { (e: Int) in
            splittedIntegers.append(splitOf(e))
        }
        
        splittedIntegers.forEach { (arrayElement: [Int]) in
            var match = array
            arrayElement.forEach { (intElement: Int) in
                if let index = match.firstIndex(of: intElement) {
                    match.remove(at: index)
                } else {
                    array.append(intElement)
                }
            }
        }
        
        result = array.reduce(1, { (r: Int, e: Int) -> Int in
            r * e
        })
        
        return result
    }
    
    // Get LCM
    let lcm: Int = lcmOf(a)
    print("LCM is \(lcm)")
    
    // Get GCF
    var gcf: Int = 0
    let minB: Int = b.reduce(Int.max) { (r: Int, i) -> Int in
        i < r ? i : r
    }
    
    for i in (1...minB).reversed() {
        var flag: Bool = false
        b.forEach { (e) in
            if e % i != 0 {
                flag = true
            }
        }

        if flag == false {
            gcf = i
            break
        }
    }
    print("GCF is \(gcf)")
    
    // Dividers of GCD & multipliers of LCM
    var multipliersCount: Int = 0
    
    if gcf >= lcm {
        (lcm...gcf).forEach { (e) in
            if gcf % e == 0 && e % lcm == 0 {
                multipliersCount += 1
            }
        }
    }
    
    return multipliersCount
}

print(getTotalX(a: [2], b: [20, 30, 12]))

//print(getTotalX(a: [2, 4], b: [16, 32, 96]))

//print(getTotalX(a: [3, 4], b: [24, 48]))

//print(getTotalX(a: [1, 32, 22], b: [30, 36, 42, 45]))

//print(getTotalX(a: [2, 3, 4, 5, 6], b: [1, 2, 3]))

//print(getTotalX(a: [100, 99, 98, 97, 96, 95, 94, 93, 92, 91], b: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))

//print(getTotalX(a: [2, 3, 6], b: [42, 84]))

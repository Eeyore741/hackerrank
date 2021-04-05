import Foundation

//https://www.hackerrank.com/challenges/cats-and-a-mouse

func catAndMouse(x: Int, y: Int, z: Int) -> String {
    var result: String = "Mouse C"
    
    if abs(z - x) > abs(z - y) {
        result = "Cat B"
    } else if abs(z - x) < abs(z - y) {
        result = "Cat A"
    }
    
    return result
}

catAndMouse(x: 1, y: 2, z: 3)
catAndMouse(x: 1, y: 3, z: 2)

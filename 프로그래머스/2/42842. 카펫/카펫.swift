import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let maxLength = brown / 2 - 1
    var result: [Int] = []
    
    for i in 1...maxLength {
        for j in 1...maxLength {
            guard (i * 2) + (j * 2) - 4 == brown else { continue }
            if (i - 2) * (j - 2) == yellow {
                result = [i, j]
            }
        }
    }
    
    return result
}
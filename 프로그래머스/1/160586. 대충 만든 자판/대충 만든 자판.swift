import Foundation

func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var dict: [Character: Int] = [:]
    
    for key in keymap {
        for (index, char) in key.enumerated() {
            dict[char] = min(dict[char] ?? 100, index + 1)
        }
    }
    
    var result = Array(repeating: 0, count: targets.count)

    for (index, string) in targets.enumerated() {
        for char in string {
            guard let str = dict[char] else {
                result[index] = -1
                break
            }
            result[index] += str
        }
    }
    
    return result
}
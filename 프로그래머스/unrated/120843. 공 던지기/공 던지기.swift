import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    let result = (k * 2 - 1) % numbers.count
    return result == 0 ? numbers.count : result
}
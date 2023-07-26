import Foundation

func solution(_ n:Int) -> Int {
    let arr = (2..<n).filter{ n % $0 == 1}
    return arr[0]
}
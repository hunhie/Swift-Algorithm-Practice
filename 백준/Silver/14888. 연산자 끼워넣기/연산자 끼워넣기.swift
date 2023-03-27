import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }
let operators = readLine()!.split(separator: " ").map { Int(String($0))! }

var maxResult = -1_000_000_000 // 최대값 초기화
var minResult = 1_000_000_000 // 최소값 초기화

func dfs(_ index: Int, _ result: Int, _ add: Int, _ sub: Int, _ mul: Int, _ div: Int) {
    if index == n {
        maxResult = max(maxResult, result)
        minResult = min(minResult, result)
        return
    }
    
    if add > 0 {
        dfs(index+1, result+nums[index], add-1, sub, mul, div)
    }
    if sub > 0 {
        dfs(index+1, result-nums[index], add, sub-1, mul, div)
    }
    if mul > 0 {
        dfs(index+1, result*nums[index], add, sub, mul-1, div)
    }
    if div > 0 {
        dfs(index+1, result/nums[index], add, sub, mul, div-1)
    }
}

dfs(1, nums[0], operators[0], operators[1], operators[2], operators[3])

print(maxResult)
print(minResult)
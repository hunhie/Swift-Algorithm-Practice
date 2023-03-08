import Foundation
func isPrime(_ num: Int) -> Bool {
    if num < 4 {
            return (num <= 1) ? false : true
        } else {
            for i in 2...Int(sqrt(Double(num))) {
                if num % i == 0 {
                    return false
                }
            }
        }
        
        return true
}

func solution(_ numbers:String) -> Int {
    let nums = numbers.map{String($0)}
    var numSet = Set<Int>()
    var visit = (1...nums.count).map{_ in false}
    
    func dfs(_ arr: [String], _ index: Int, _ count: Int ) {
        if index == count {
            numSet.insert(Int(arr.joined())!)
            return
        }
        
        for (i, n) in nums.enumerated() {
            if visit[i] { continue }
            
            var new = arr
            new.append(n)
            
            visit[i] = true
            dfs(new, index + 1, count)
            visit[i] = false
        }
    }
    
    for i in 1...nums.count { dfs([], 0, i) }
    
    return numSet.filter{ isPrime($0) }.count
}
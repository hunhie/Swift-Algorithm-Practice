import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var visited: [Bool] = Array(repeating: false, count: dungeons.count)
    var answer = 0
    
    func dfs(_ count: Int, _ pirodo: Int) {
        answer = max(answer, count)
        for i in 0..<dungeons.count {
            if !visited[i] && dungeons[i][0] <= pirodo {
                visited[i] = true
                dfs(count+1, pirodo - dungeons[i][1])
                visited[i] = false
            }
        }
    }
    
    dfs(0, k)
    
    return answer
}
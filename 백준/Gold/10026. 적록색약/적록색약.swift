import Foundation
let N=Int(readLine()!)!
var graph=[[String]]()
var graphRB=graph
(1...N).forEach{ _ in
    var input = String(readLine()!)
    graph.append(input.map{String($0)})
    input = input.replacingOccurrences(of: "G", with: "R")
    graphRB.append(input.map{String($0)})
}
var a = 0, b = 0
for i in 0..<N {
    for j in 0..<N {
        if graph[i][j] != "X" {
            a += dfs(i,j, graph[i][j])
        }
    }
}
graph = graphRB
for i in 0..<N {
    for j in 0..<N {
        if graph[i][j] != "X" {
            b += dfs(i,j, graph[i][j])
        }
    }
}
print(a, b)
func dfs(_ x: Int, _ y: Int, _ n: String) -> Int {
    if x < 0 || x >= N || y < 0 || y >= N {
        return 0
    }
    if graph[x][y] == n {
        graph[x][y] = "X"
        dfs(x+1,y,n)
        dfs(x-1,y,n)
        dfs(x,y+1,n)
        dfs(x,y-1,n)
    }
    return 1
}
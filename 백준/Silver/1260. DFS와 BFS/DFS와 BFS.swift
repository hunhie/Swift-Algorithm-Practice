let X = readLine()!.split{$0==" "}.map{Int($0)!}
let (N, M, V) = (X[0], X[1], X[2])
var graph = (0...N).map{_ in Array(repeating: 0, count: N+1)}
var visit = Array(repeating: false, count: N+1)
(1...M).forEach{ _ in
    let N = readLine()!.split{$0==" "}.map{Int($0)!}
    graph[N[0]][N[1]] = 1
    graph[N[1]][N[0]] = 1
}
func dfs(_ n:Int){
    visit[n] = true
    print(n, terminator: " ")
    for i in 1...N {
        if !visit[i] && graph[n][i] == 1 {
            dfs(i)
        }
    }
}
func bfs(_ n:Int){
    var queue: [Int] = []
    visit[n] = false
    queue.append(n)
    while !queue.isEmpty {
        let now = queue.removeFirst()
        print(now, terminator: " ")
        for i in 0...N {
            if graph[now][i] == 1 && visit[i] {
                queue.append(i)
                visit[i] = false
            }
        }
    }
}
dfs(V)
print()
bfs(V)
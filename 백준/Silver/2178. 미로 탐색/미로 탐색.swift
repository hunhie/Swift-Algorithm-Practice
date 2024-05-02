let n=readLine()!.split{$0==" "}.map{Int($0)!}, (N,M) = (n[0],n[1])
var board = (0..<N).map{_ in readLine()!.map{Int(String($0))!}}
var visit = [(0,0)]
while !visit.isEmpty {
    let node = visit.removeFirst()
    for i in [(0,1),(0,-1),(1,0),(-1,0)] {
        let (nx, ny) = (node.0 + i.0, node.1 + i.1)
        if 0..<N ~= nx && 0..<M ~= ny && board[nx][ny] == 1 {
            board[nx][ny] = board[node.0][node.1] + 1
            visit.append((nx,ny))
        }
    }
}
print(board[N-1][M-1])
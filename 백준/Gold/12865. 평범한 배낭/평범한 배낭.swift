let B=readLine()!.split{$0==" "}.map{Int($0)!}
let (N,M)=(B[0],B[1])
var dp=Array(repeating:0, count:M+1)
for _ in 0..<N{
    let T=readLine()!.split{$0==" "}.map{Int($0)!}
    let W=T[0],V=T[1]
    for j in (1...M).reversed(){
        if W <= j{dp[j]=max(dp[j],dp[j-W]+V)}
    }
}
print(dp.max()!)
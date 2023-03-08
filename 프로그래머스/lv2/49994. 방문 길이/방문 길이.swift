import Foundation
func solution(_ dirs:String) -> Int {
    let d = ["U":(0,1), "D":(0,-1), "R":(1,0), "L":(-1,0)]
    var N = [0,0]
    var M = Set<[Int]>()
    
    for i in dirs {
        if let n = d[String(i)] {
            let J = [N[0]+n.0,N[1]+n.1]
            if abs(J[0]) > 5 || abs(J[1]) > 5 { continue }
            if !M.contains(N+J) && !M.contains(J+N) {
                M.insert(N+J)
            }
            N = J
        }
    }
    return M.count
}
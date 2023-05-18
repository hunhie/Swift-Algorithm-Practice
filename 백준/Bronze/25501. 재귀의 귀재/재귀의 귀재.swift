for _ in 1...Int(readLine()!)! {
    let a = readLine()!.map{String($0)}
    var b = 0, c = a.count - 1, i = 1, r = 1
    while c > b {
        if a[b] != a[c] {
            i = 0
            break
        } else {
            b += 1
            c -= 1
            r += 1
        }
    }
    print("\(i) \(r)")
}
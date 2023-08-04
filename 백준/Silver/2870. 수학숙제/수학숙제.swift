let N=(1...Int(readLine()!)!).map{_ in readLine()!}.joined(separator:"\n")
N.split{(ch) -> Bool in
Int("\(ch)") == nil
}.map{$0.allSatisfy{$0 == "0"} ? "0" : $0.drop{$0 == "0"}
}.sorted{($0.count, $0) < ($1.count, $1)}
.forEach{print($0)}
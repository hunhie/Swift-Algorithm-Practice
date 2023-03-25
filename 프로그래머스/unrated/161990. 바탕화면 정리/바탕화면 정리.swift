import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var data = wallpaper.map{$0.map{$0}}
    var x: [Int] = [], y: [Int] = []
    for i in 0..<data.count {
        for j in 0..<data[i].count {
            guard data[i][j] == "#" else { continue }
            x.append(i)
            y.append(j)
        }
    }
    return [x.min()!,y.min()!,x.max()!+1,y.max()!+1]
}
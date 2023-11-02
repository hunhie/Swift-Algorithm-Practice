import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var arr: [String: Int] = [: ]
    (0..<name.count).forEach { i in
        arr.updateValue(yearning[i], forKey: name[i])
    }
    
    return photo.map { a in
        a.map { arr[$0] ?? 0 }.reduce(0, +)  
    }
}
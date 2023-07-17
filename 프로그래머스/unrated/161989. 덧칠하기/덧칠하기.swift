import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    // 칠한 횟수
    var count: Int = 1
    // 마지막으로 칠한 시작 인덱스
    var start: Int = section[0]
    
    for i in section {
        // 현재 인덱스의 페인트칠 여부 확인
        guard start + m <= i else { continue }
        start = i
        count += 1
    }
    return count
}
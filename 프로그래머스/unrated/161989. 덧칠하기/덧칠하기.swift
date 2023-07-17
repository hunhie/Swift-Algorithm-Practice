import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    // 페인트칠한 횟수
    var count: Int = 1
    
    // 마지막으로 페인트칠한 인덱스
    var start: Int = section[0]
    
    for i in section {
        // 현재 인덱스가 마지막으로 페인트칠한 범위에 속해 있다면 다음 인덱스로 건너뛰기
        guard start + m <= i else { continue }
        
        // 칠하지 않은 인덱스라면 페인트 칠하기
        count += 1
        
        // 마지막으로 칠한 인덱스 기록
        start = i
    }
    
    return count
}
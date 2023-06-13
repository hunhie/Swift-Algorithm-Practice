import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
  // 선수 배열의 사본
  var arr = players
  // 선수 이름과 인덱스 순서가 담긴 딕셔너리 생성
  var dict: [String: Int] = Dictionary(uniqueKeysWithValues: zip(players, 0..<players.count))
  
  // 호출된 선수와 추월 당할 선수의 순서, 인덱스 교체
  callings.forEach { calling in
    let currentPlayer = dict[calling]!
    let previousePlayer = arr[currentPlayer - 1]
    arr.swapAt(currentPlayer, currentPlayer - 1)
    
    dict[calling]! -= 1
    dict[previousePlayer]! += 1
  }
  
  // 새로운 순위 배열 반환
  return arr
}
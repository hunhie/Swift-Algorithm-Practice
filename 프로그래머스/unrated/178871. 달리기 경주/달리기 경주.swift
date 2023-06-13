import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
  var arr = players
  var indices: [String: Int] = [:]  // 요소의 인덱스를 저장할 딕셔너리
  
  for (index, player) in players.enumerated() {
    indices[player] = index // 각 요소의 인덱스를 딕셔너리에 저장
  }
  
  for calling in callings {
    if let currentIndex = indices[calling] {    // 호출된 플레이어의 index를 딕셔너리에서 조회
      let previousIndex = currentIndex - 1      // 호출된 플레이어가 추월한 플레이어의 index 계산
      let currentPlayer = arr[currentIndex]     // 호출된 플레이어의 문자열
      let previousePlayer = arr[previousIndex]  // 추월 당한 플레이어의 문자열
      
      // 호출된 플레이어와 추월 당한 플레이어의 순서, index 교체
      arr[currentIndex] = previousePlayer
      arr[previousIndex] = currentPlayer
      
      indices[currentPlayer] = previousIndex
      indices[previousePlayer] = currentIndex
    }
  }
  
  return arr
}
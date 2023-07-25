import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
  var answer = "Yes"
  var index1 = 0, index2 = 0
  
  for item in goal {
    if index1 < cards1.count && item == cards1[index1] {
      index1 += 1
    } else if index2 < cards2.count && item == cards2[index2] {
      index2 += 1
    } else {
      answer = "No"
    }
  }
  
  return answer
}
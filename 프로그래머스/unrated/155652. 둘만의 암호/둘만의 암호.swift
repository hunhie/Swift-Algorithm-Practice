import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
  let abc = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  var answer: String = ""
  let skip = skip.map{String($0)}
  for char in s {
    var abcIndex = abc.firstIndex(of: String(char))!
    var index = index
    while index > 0 {
      abcIndex = abcIndex + 1 >= abc.count ? 0 : abcIndex + 1
      guard !skip.contains(abc[abcIndex]) else { continue }
      index -= 1
    }
    answer += abc[abcIndex]
  }
  
  return answer
}

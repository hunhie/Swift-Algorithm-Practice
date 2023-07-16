import Foundation

func caculate(x: Int, y: Int, w: Int, h: Int) -> Bool {
    guard x >= 0 && x < w && y >= 0 && y < h else { return false }
    return true
}

func solution(_ park:[String], _ routes:[String]) -> [Int] {
  let w = park[0].count
  let h = park.count
  let dx = [0, 0, -1, 1]
  let dy = [-1, 1, 0, 0]
  let direction = ["N", "S", "W", "E"]
  let graph = park.map{ Array($0) }
  
  var pos: [Int] = graph.indices.reduce(into: [Int]()) { result, i in
    if let j = graph[i].firstIndex(of: "S") {
      result = [i, j]
    }
  }
  
  for i in 0..<h {
    for j in 0..<w {
      guard graph[i][j] == "S" else { continue }
      pos = [i, j]
    }
  }
  
  for route in routes {
    let splitRoute = route.split{$0==" "}
    let dir = String(splitRoute[0])
    let steps = Int(splitRoute[1])!
    
    if let dirIndex = direction.firstIndex(of: dir) {
      var node = pos
      for i in 0..<steps {
        let nx = node[1] + dx[dirIndex]
        let ny = node[0] + dy[dirIndex]
        
        guard caculate(x: nx, y: ny, w: w, h: h) else {
          node = pos
          break
        }
        if graph[ny][nx] == "X" {
          node = pos
          break
        }
        node = [ny, nx]
      }
      pos = node
    }
  }
  
  return pos
}
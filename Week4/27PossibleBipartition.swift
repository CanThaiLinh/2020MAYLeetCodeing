class Solution {
    func possibleBipartition(_ N: Int, _ dislikes: [[Int]]) -> Bool {
        var graph:[[Int]] = []
        for _ in 0..<N{
            graph.append([])
        }
        for dislike in dislikes{
            let from = dislike[0]-1
            let to = dislike[1]-1
            graph[from].append(to)
            graph[to].append(from)
        }
        var visited = Array(repeating: 0, count: graph.count)
        for i in 0..<N{
            if 0 == visited[i]{
                let res = bfs(i ,graph, &visited)
                if !res{
                    return false
                }
            }
        }
        return true
    }
    
    func bfs(_ node:Int, _ graph:[[Int]], _ visited:inout[Int])->Bool{
        var queue:[Int] = []
        queue.append(node)
        visited[node] = 1

        while !queue.isEmpty{
            let item = queue.removeFirst()
            for child in graph[item]{
                if visited[child] == 0{
                    visited[child] = visited[item] == 1 ? 2 : 1
                    queue.append(child)
                }else{
                    if visited[child] == visited[item] { return false }
                }
            }
        }
        return true
    }
    
    
}

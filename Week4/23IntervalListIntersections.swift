class Solution {
    func intervalIntersection(_ A: [[Int]], _ B: [[Int]]) -> [[Int]] {
        var result : [[Int]] = [[Int]]()
        var i : Int = 0
        var j : Int = 0
        
        while (i < A.count && j < B.count){
            var low  = max(A[i][0],B[j][0])
            var high = min(A[i][1],B[j][1])
            
            if low <= high{
                result.append([low,high])
            }
            
            if A[i][1] < B[j][1]{
                i += 1
            }else{
                j += 1
            }
        }
        
        return result
    }
}

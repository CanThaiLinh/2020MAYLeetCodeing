class Solution {
    func maxUncrossedLines(_ A: [Int], _ B: [Int]) -> Int {
        let aCount = A.count
        let bCount = B.count
        var dp = Array(repeating: Array(repeating: 0, count: bCount + 1), count: aCount + 1)
        for i in 0..<aCount{
            for j in 0..<bCount{
                if (A[i] == B[j]){
                    dp[i+1][j+1] = 1 + dp[i][j]
                }else{
                    dp[i+1][j+1] = max(dp[i][j+1], dp[i+1][j])
                }
            }
        }
        return dp[aCount][bCount]
        
    }
}

class Solution {
    func findMaxLength(_ nums: [Int]) -> Int {
        var mark = [Int : Int]()
        mark[0] = -1
        var maxLength = 0, count = 0
        for index in 0..<nums.count{
            count = count + (nums[index] == 1 ? 1 : -1)
            if mark.keys.contains(count){
                maxLength = max(maxLength, index - mark[count]!)
            }else{
                mark[count] = index
            }
        }
        return maxLength
        
    }
}

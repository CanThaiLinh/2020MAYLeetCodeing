class Solution {
    func frequencySort(_ s: String) -> String {
        var result = ""
        var mark = [Character : Int]()
        for item in s {
            if mark[item] == nil{
                mark[item] = 0
            }
            mark[item]! += 1
        }
        var listKeys = Array(mark.keys)
        let sortedCharacters = listKeys.sorted {
            mark[$0] ?? 0 > mark[$1] ?? 0
        }
        
        for item in sortedCharacters{
            let freq = mark[item]!
            for _ in 1...freq{
                result += "\(item)"
            }
        }
        return result
    }
}

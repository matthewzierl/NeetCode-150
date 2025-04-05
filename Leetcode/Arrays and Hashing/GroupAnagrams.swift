class GroupAnagrams {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var ret = [[String]]()
        var anagramMap = [[Int]: [String]]()
        for str in strs {
            var wordMap = [Int](repeating: 0, count: 26) // 26 letters of alphabet
            for char in str {
                wordMap[Int(char.asciiValue!) - 97] += 1
            }
            anagramMap[wordMap, default: []].append(str)
        }
        for (key, value) in anagramMap {
            ret.append(value)
        }
        return ret
    }
}

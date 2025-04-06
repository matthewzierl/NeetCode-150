class LongesSubstringWithoutRepeatingCharacters {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        guard s.count > 0 else { return 0 }
        let characters = Array(s)
        var seen = Set<Character>()
        var first = 0
        var last = 0
        var longestLength = 0
        
        while last < characters.count {
            if seen.contains(characters[last]) {
                seen.remove(characters[first])
                first += 1
            } else {
                seen.insert(characters[last])
                longestLength = max(longestLength, last - first + 1)
                last += 1
            }
        }
        
        return longestLength
        
    }
}

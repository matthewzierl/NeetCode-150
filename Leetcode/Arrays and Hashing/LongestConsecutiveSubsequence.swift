class LongestConsecutiveSubsequence {
    func longestConsecutive(_ nums: [Int]) -> Int {
        // create set of numbers within array
        let numSet = Set(nums)
        var longestSubsequenceLength = 0
        for var num in numSet { // modifies copy of num, iterate over set (unique values)
            var currentLength = 0
            if !numSet.contains(num - 1) {
                currentLength += 1
                while numSet.contains(num + 1) {
                    currentLength += 1
                    num += 1
                }
            }
            if currentLength > longestSubsequenceLength {
                longestSubsequenceLength = currentLength
            }
        }
        return longestSubsequenceLength
    }
}

class TopKFrequentElements {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        // count number of occurences for each num
        var count = [Int: Int]()
        for num in nums { // TIME: O(n)
            count[num, default: 0] += 1
        }
        // group nums together by frequency
        var freq = [[Int]](repeating: [], count: nums.count + 1) // array of size nums.count + 1, each with value [Int] to store numbers w/ that frequency
        for (value, occurences) in count { // TIME O(number of unique values)
            freq[occurences].append(value)
        }
        // iterate backwards and add until reaching k
        var ret = [Int]()
        for i in stride(from: freq.count - 1, to: 0, by: -1) { // O(number of unique frequencies)
            let group = freq[i]
            for z in group { // Time O(n) at most if all numbers occur the same amount of times
                ret.append(z)
                if ret.count >= k { return ret }
            }
        }
        return []
    }
}

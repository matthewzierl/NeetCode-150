class ThreeSum {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        // sort array: O(nlogn)
        var n = [[Int]]()
        let sorted = nums.sorted()
        for leftIndex in 0 ..< sorted.count - 2 {
            if leftIndex > 0 && sorted[leftIndex] == sorted[leftIndex - 1] { continue }
            var middleIndex = leftIndex + 1
            var rightIndex = sorted.count - 1
            while middleIndex < rightIndex {
                let sum = sorted[leftIndex] + sorted[middleIndex] + sorted[rightIndex]
                if sum < 0 {
                    middleIndex += 1
                    continue
                } else if sum > 0 {
                    rightIndex -= 1
                    continue
                } else {
                    n.append([sorted[leftIndex], sorted[middleIndex], sorted[rightIndex]])
                    // skip duplicates
                    while middleIndex < rightIndex && sorted[middleIndex] == sorted[middleIndex + 1] {
                        middleIndex += 1
                    }
                    while rightIndex > middleIndex && sorted[rightIndex] == sorted[rightIndex - 1] {
                        rightIndex -= 1
                    }
                    middleIndex += 1
                    rightIndex -= 1
                }
            }
        }
        return n
    }
}

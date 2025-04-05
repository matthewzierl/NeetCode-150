class TwoSumInputArraySorted {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        // leftIndex: starts with smaller values - needs big values
        // rightIndex: starts with high values - needs smaller values
        // pointers start on opposite ends
        // check if left + right == target
        // if equal, return indices + 1
        // if < target, move left pointer
        // if > target, move right pointer
        // go until leftIndex == rightIndex
        var leftIndex = 0
        var rightIndex = numbers.count - 1
        
        while leftIndex < rightIndex {
            let sum = numbers[leftIndex] + numbers[rightIndex]
            if sum == target {
                return [leftIndex + 1, rightIndex + 1]
            }
            else if sum < target {
                leftIndex += 1
            } else {
                rightIndex -= 1
            }
        }
        return [0, 0] // hopefully never comes to this...
    }
}

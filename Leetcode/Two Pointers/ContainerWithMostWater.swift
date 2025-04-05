class ContainerWithMostWater {
    func maxArea(_ height: [Int]) -> Int {
        // 2 pointers, one at each end (maximizes width)
        // calculate area, compare for max
        // compare next step for each, and continue with whatever side has more height
        // stop when left == right
        var maxArea = 0
        var left = 0
        var right = height.count - 1
        
        while left < right {
            let currentArea = (right - left) * (min(height[left], (height[right])))
            maxArea = max(maxArea, currentArea)
            if height[left] < height[right] {
                left += 1
            } else {
                right -= 1
            }
        }
        return maxArea
        
    }
}

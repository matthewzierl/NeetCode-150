class ProductsOfArrayExceptSelf {
    /* with division:
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var zeroCount = 0
        var zeroIndex = -1
        var totalProduct = 1
        for (index, num) in nums.enumerated() {
            if num == 0 {
                zeroCount += 1
                zeroIndex = index
                continue
            }
            totalProduct *= num
        }
        var products = [Int](repeating: 0, count: nums.count)
        if zeroCount > 1 { return products }
        if zeroCount == 1 {
            products[zeroIndex] = totalProduct
            return products
        }
        // no zeros
        for i in 0 ..< products.count { // TIME: O(n)
            products[i] = totalProduct / nums[i]
        }
        return products
    }
     */
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var ret = [Int](repeating: 0, count: nums.count)
        // First Pass: Calculate prefix product for each
        var prefixProduct = 1
        for (index, num) in nums.enumerated() {
            ret[index] = prefixProduct
            prefixProduct *= num
        }
        // Second Pass: Calculate Postfix and multiply with value stored in ret
        var postFixProduct = 1
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            ret[i] = postFixProduct * ret[i]
            postFixProduct *= nums[i]
        }
        return ret
    }
}

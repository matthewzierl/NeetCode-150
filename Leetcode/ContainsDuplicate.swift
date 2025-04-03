class ContainsDuplicate {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict = [Int: Bool]()
        for num in nums {
            if let isStored = dict[num] {
                return true
            } else {
                dict.updateValue(true, forKey: num)
            }
        }
        return false
    }
}

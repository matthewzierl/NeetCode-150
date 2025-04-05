//
//  TwoSum.swift
//  Leetcode
//
//  Created by Matthew Zierl on 4/3/25.
//

class TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // create a dictionary with keys being ints, and value being array of indices
        var prevDict = [Int: Int]()
        for (index, num) in nums.enumerated() {
            let needed = target - num
            if let prevIndex = prevDict[needed] { return [prevIndex, index] }
            prevDict.updateValue(index, forKey: num)
        }
        return []
    }
}

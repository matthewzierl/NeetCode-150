class ValidAnagram {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sDict = [Character: Int]()
        var tDict = [Character: Int]()
        for char in s {
            if let count = sDict[char] {
                sDict.updateValue(count + 1, forKey: char)
            } else {
                sDict.updateValue(1, forKey: char)
            }
        }
        for char in t {
            if let count = tDict[char] {
                tDict.updateValue(count + 1, forKey: char)
            } else {
                tDict.updateValue(1, forKey: char)
            }
        }
        guard sDict.count == tDict.count else {
            return false
        }
        for (key, value) in sDict {
            guard let tValue = tDict[key] else { return false }
            if value != tValue { return false }
        }
        return true
    }
}

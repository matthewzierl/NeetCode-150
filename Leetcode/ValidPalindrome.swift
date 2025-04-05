class ValidPalindrome {
    func isPalindrome(_ s: String) -> Bool {
        var leftOffset = 0
        var rightOffset = s.count - 1
        let chars = Array(s)
        
        while leftOffset < rightOffset {
            let leftChar = chars[leftOffset]
            let rightChar = chars[rightOffset]
            
            if !leftChar.isLetter && !leftChar.isNumber {
                leftOffset += 1
                continue
            }
            if !rightChar.isLetter && !rightChar.isNumber {
                rightOffset -= 1
                continue
            }
            
            if leftChar.lowercased() != rightChar.lowercased() {
                return false
            }
            
            leftOffset += 1
            rightOffset -= 1
        }
        return true
    }
}

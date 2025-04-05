class ValidSudoku {
    /*
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = [[Character: Bool]](repeating: [Character: Bool](), count: 9)
        var columns = [[Character: Bool]](repeating: [Character: Bool](), count: 9)
        var squares = [[Character: Bool]](repeating: [Character: Bool](), count: 9)
        
        for rowIndex in 0 ..< 9 {
            let row = board[rowIndex]
            for columnIndex in 0 ..< 9 {
                let character = row[columnIndex]
                if character != "." {
                    let squareIndex = (rowIndex / 3) * 3 + (columnIndex / 3)
                    guard rows[rowIndex][character] != true else { return false }
                    guard columns[columnIndex][character] != true else { return false }
                    guard squares[squareIndex][character] != true else { return false }
                    rows[rowIndex].updateValue(true, forKey: character)
                    columns[columnIndex].updateValue(true, forKey: character)
                    squares[squareIndex].updateValue(true, forKey: character)
                }
            }
        }
        return true
    }
     */
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rows = [Int: Set<Character>]()
        var columns = [Int: Set<Character>]()
        var squares = [String: Set<Character>]()
        
        for rowIndex in 0 ..< 9 {
            for columnIndex in 0 ..< 9 {
                let character = board[rowIndex][columnIndex]
                if character != "." {
                    let squareIndex = String(rowIndex / 3) + String(columnIndex / 3)
                    guard rows[rowIndex]?.contains(character) != true else { return false }
                    guard columns[columnIndex]?.contains(character) != true else { return false }
                    guard squares[squareIndex]?.contains(character) != true else { return false }
                    rows[rowIndex, default: []].insert(character)
                    columns[columnIndex, default: []].insert(character)
                    squares[squareIndex, default: []].insert(character)
                }
            }
        }
        return true
    }
}

func isValidSudoku(_ board: [[Character]]) -> Bool {
    var seen = Set<String>()
    for i in 0 ..< 9 {
        for j in 0 ..< 9{
            let num = board[i][j]
            let tmp = "(" + String(board[i][j]) + ")"
            
            if num != "." {
                if seen.contains(String(i) + tmp) || seen.contains(tmp + String(j)) || seen.contains(String(i / 3) + tmp + String(j / 3)) {
                    return false
                } else {
                    seen.insert(String(i) + tmp)
                    seen.insert(tmp + String(j))
                    seen.insert(String(i / 3) + tmp + String(j / 3))
                }
            }
        }
    }
    
    return true
}

func isValid(_ s: String) -> Bool {
    var temp = [Character]()
    for char in s {
        if char == "(" || char == "{" || char == "[" {
            temp.append(char)
        } else {
            if let top = temp.last {
                if char == ")" && top == "(" {
                    temp.removeLast()
                    continue
                } else if char == "}" && top == "{" {
                    temp.removeLast()
                    continue
                } else if char == "]" && top == "[" {
                    temp.removeLast()
                    continue
                } else {
                    return false
                }
            } else {
                return false
            }
        }
    }
    return temp.isEmpty
}

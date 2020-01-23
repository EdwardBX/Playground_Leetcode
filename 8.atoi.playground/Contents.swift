func myAtoi(_ str: String) -> Int {
    guard str.count > 0 else {
        return 0
    }
    
    let ts = Array(str)
    var start = 0
    let end = ts.count
    var isNegtive = false

    var numbers = [Character]()

    while start < end && ts[start].isWhitespace {
        start += 1
    }

    if start < end {
        if ts[start] == "-" || ts[start] == "+" {
            isNegtive = ts[start] == "-"
            start += 1
        }
    } else {
        return 0
    }
    
    if start < end && !ts[start].isNumber {
        return 0
    }
    
    while start < end && ts[start].wholeNumberValue == 0 {
        start += 1
    }
    
    while start < end && ts[start].isNumber  {
        numbers.append(ts[start])
        start += 1
    }

    var result = 0
    for ch in numbers {
        if let value = ch.wholeNumberValue {
            result = result * 10 + value
        }
        if result > Int32.max || result < Int32.min {
            return isNegtive ? Int(Int32.min) : Int(Int32.max)
        }
    }
    
    return isNegtive ? result * -1 : result
}

myAtoi("  ")

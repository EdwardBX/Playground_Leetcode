func reverse(_ x: Int) -> Int {
    var negative = false
    var tmp = x
    if x < 0 {
        negative = true
        tmp = -x
    }
    
    let str = String(tmp)
    var result = 0
    for (i, ch) in str.reversed().enumerated() {
        if i == 0 && ch == "0" {
            
        } else {
            result = (result * 10 + Int(String(ch))!)
        }
    }
    if result > Int32.max || result < Int32.min {
        return 0
    }
    return negative ? result * -1 : result
}

reverse(+120)

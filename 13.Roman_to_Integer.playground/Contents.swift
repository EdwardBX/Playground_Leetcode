func romanToInt(_ s: String) -> Int {
    var result: Int = 0
    let length: Int = s.count
    for i in (0...length - 1).reversed() {
        let c = Array(s)[i]
        switch c {
        case "I":
            // 大于 5, 说明 I 在其他的左边，要减去 1
            result += result >= 5 ? -1 : 1
        case "V":
            result += 5
        case "X":
            result += 10 * (result >= 50 ? -1 : 1)
        case "L":
            result += 50
        case "C":
            result += 100 * (result >= 500 ? -1 : 1)
        case "D":
            result += 500
        case "M":
            result += 1000
        default:
            break
        }
    }
    return result
}

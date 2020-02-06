func hammingDistance(_ x: Int, _ y: Int) -> Int {
    let temp = x ^ y
    return hammingWeight(temp)
}

func hammingWeight(_ x: Int) -> Int {
    var result = 0
    var temp = x
    while (temp > 0) {
        temp &= temp - 1
        result += 1
    }
    return result
}

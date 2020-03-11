func myPow(_ x: Double, _ n: Int) -> Double {
     guard n != 0 else {
        return 1
    }

    var tmpn = n
    var tmpx = x
    if (tmpn < 0) {
        tmpn = 0 - tmpn
        tmpx = 1 / tmpx
    }
    
    return (tmpn % 2 == 0) ? myPow(tmpx * tmpx, tmpn / 2): tmpx * myPow(tmpx * tmpx, tmpn / 2)
}

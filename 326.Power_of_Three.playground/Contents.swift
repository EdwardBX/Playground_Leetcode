func isPowerOfThree(_ n: Int) -> Bool {
    guard n > 0 else {
        return false
    }
    
    if n > 1 && n % 3 != 0 {
        return false
    }
    
    if n == 1 {
        return true
    }
    
    return isPowerOfThree(n / 3)
}


isPowerOfThree(9)

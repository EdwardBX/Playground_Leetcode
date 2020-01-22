func rotate(_ matrix: inout [[Int]]) {
    reverseInPlace(&matrix)
    let length = matrix.count
    for i in 0 ..< length {
        for j in i + 1 ..< length   {
            (matrix[j][i], matrix[i][j]) = (matrix[i][j], matrix[j][i])
        }
    }
}

func reverseInPlace<T>(_ nums: inout [T]) {
    for i in 0 ..< nums.count/2 {
        nums.swapAt(i, nums.count - 1 - i)
    }
}

var intcolletion = [[1,2,3,4], [5,6,7,8], [9,10,11,12],[13,14,15,16]]
rotate(&intcolletion)


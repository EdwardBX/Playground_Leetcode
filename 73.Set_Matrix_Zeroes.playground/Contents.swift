func setZeroes(_ matrix: inout [[Int]]) {
    guard matrix.count > 0 else {
        return
    }
    
    var firstRowZero = false
    var firstColZero = false
    
    for i in 0 ..< matrix.count {
        for j in 0 ..< matrix[0].count {
            if (i != 0 && j != 0 && matrix[i][j] == 0) {
                matrix[i][0] = 0
                matrix[0][j] = 0
            } else if matrix[i][j] == 0 {
                if i == 0 {
                    firstRowZero = true
                }
                if j == 0 {
                    firstColZero = true
                }
            }
        }
    }
        
    for i in 1 ..< matrix.count {
        for j in 1 ..< matrix[0].count {
            if(matrix[0][j] == 0 || matrix[i][0] == 0){
                matrix[i][j] = 0;
            }
        }
    }
    
    if firstColZero {
        for i in 0 ..< matrix.count {
            matrix[i][0] = 0
        }
    }
    
    if firstRowZero {
        for j in 0 ..< matrix[0].count {
            matrix[0][j] = 0
        }
    }
}

var matrix = [[0,1,2,0],
              [3,4,5,2],
              [1,3,1,5]]

setZeroes(&matrix)

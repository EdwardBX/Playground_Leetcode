func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var result = [Int]()
    var anums = nums1
    var bnums = nums2

    anums.sort()
    bnums.sort()

    let alength = anums.count
    let blength = bnums.count

    var i = 0, j = 0
    while i < alength && j < blength {
        if anums[i] < bnums[j] {
            i += 1
        } else if anums[i] > bnums[j] {
            j += 1
        } else if anums[i] == bnums[j] {
            result.append(anums[i])
            i += 1
            j += 1
        }
    }

    return result
}

intersect([2,1], [2,3,4])



/// Given a non-sorted array of numbers with some zeros in it,
/// Move all the zeros to the end of the array.

var numbers = [0, -1, 3, 4, -2, 0, 0, 8, 3, 2, 0]
var numbers2 = [-1, -2, 0, -8, 0, 0, 0]

func moveZerosToEnd(array: [Int]) -> [Int] {
    
    var result = array
    var i = 0
    var zeroCount = 0
    
    while i < result.count {
        if result[i] != 0 {
            result[zeroCount] = result[i]
            zeroCount += 1
        }
        i += 1
    }
    
    while zeroCount < result.count {
        result[zeroCount] = 0
        zeroCount += 1
    }
    
    return result
}

moveZerosToEnd(array: numbers)
moveZerosToEnd(array: numbers2)

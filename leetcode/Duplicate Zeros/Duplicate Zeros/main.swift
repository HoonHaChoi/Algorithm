import Foundation

// MARK: Duplicate Zeros
func duplicateZeros(_ arr: inout [Int]) {
    let maxlength = arr.count-1
    var j = 0
    arr.enumerated().forEach { (k,v) in
        if v == 0 {
            arr.insert(0, at: k+j)
            j += 1
        }
    }
    arr = Array(arr[0...maxlength])
}

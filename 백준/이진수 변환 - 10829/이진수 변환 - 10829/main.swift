import Foundation

var arr: [Int] = []
func binary(n: Int) {
    if n == 0 {
        return
    }
    if n == 1  {
        arr.append(1)
        return
    }
    arr.append(n%2)
    binary(n: Int(n/2))
}

let input = Int(readLine()!)!
binary(n: input)
arr.reverse()
print(arr.map { String($0) }.joined())

import Foundation

var deduplication: Set<Int> = []
let input = Int(readLine()!)!
let n = readLine()!.split(separator: " ")
    .map { Int(String($0))! }
    .map { deduplication.insert($0) }

_ = deduplication.sorted(by: <).map {
    print($0, separator: " ", terminator: " ")
}

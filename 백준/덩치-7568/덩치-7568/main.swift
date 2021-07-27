//
//  main.swift
//  덩치-7568
//
//  Created by HOONHA CHOI on 2021/06/02.
//

import Foundation
// MARK: 덩치-7568 2회차
let n = Int(readLine()!)!
var body: [(Int,Int)] = []
for _ in 0..<n {
    let bodyInput = readLine()!.split(separator: " ").map { Int(String($0))! }
    body.append((bodyInput[0], bodyInput[1]))
}

for i in body {
    let filter = body.filter { $0 != i }
    print(filter.filter { $0.0 > i.0 && $0.1 > i.1 }.count+1, separator: "", terminator: " ")
}

//
//let input = Int(readLine()!)!
//var body = [(width: Int,height: Int)]()
//var result: [Int] = []
//(0..<input).forEach { _ in
//   let frame = readLine()!.split(separator: " ").map { Int(String($0)) }
//    body.append((width: frame[0]!, height: frame[1]!))
//}
//
//for i in body {
//    var count = 1
//    for j in body {
//        if i == j {
//            continue
//        }
//
//        if i.width < j.width && i.height < j.height {
//            count += 1
//        }
//    }
//    result.append(count)
//}
//_ = result.map {
//    print("\($0)", separator: " ", terminator: " ")
//}

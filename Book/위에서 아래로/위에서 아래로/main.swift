//
//  main.swift
//  위에서 아래로
//
//  Created by HOONHA CHOI on 2021/07/09.
//

import Foundation
// MARK: 위에서 아래로
let input = Int(readLine()!)!

var result: [Int] = []
for _ in 0..<input {
    result.append(Int(readLine()!)!)
}
for i in result.sorted(by: >) {
    print(i, separator: "", terminator: " ")
}



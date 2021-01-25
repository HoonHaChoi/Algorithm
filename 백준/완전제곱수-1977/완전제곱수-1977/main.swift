//
//  main.swift
//  완전제곱수-1977
//
//  Created by HOONHA CHOI on 2021/01/25.
//

import Foundation
let n = Int(readLine()!)!
let m = Int(readLine()!)!

var total = [Int]()
for i in n...m where sqrt(Double(i)) == Double(Int(sqrt(Double(i)))) {
    total.append(i)
}
if !total.isEmpty {
    print(total.reduce(0, +))
    print(total.min()!)
} else {
    print(-1)
}

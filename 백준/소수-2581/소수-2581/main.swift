//
//  main.swift
//  소수-2581
//
//  Created by HOONHA CHOI on 2021/07/28.
//

import Foundation
// MARK: 소수-2581
var d: [Int] = .init(repeating: 0, count: 10001)

for i in 0..<d.count {
    d[i] = i
}

for i in 2..<d.count {
    if d[i] == 0 { continue }
    var c = 2

    while i*c < d.count {
        if d[i*c] == 0 {
            c += 1
            continue }
        d[i*c] = 0
        c += 1
    }
}

let n = Int(readLine()!)!
let m = Int(readLine()!)!

if d[n...m].filter({ $0 > 0 }).isEmpty {
    print(-1)
} else {
    print(d[n...m].reduce(0, +))
    print(d[n...m].filter{ $0 > 0 }.min()!)
}


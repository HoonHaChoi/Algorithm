//
//  main.swift
//  이친수-2193
//
//  Created by HOONHA CHOI on 2021/07/27.
//

import Foundation
// MARK: 이친수-2193
let n = Int(readLine()!)!
print(pinaryNumber(n: n))

func pinaryNumber(n: Int) -> Int {
    if n == 1 || n == 2 {
        return 1
    }
    var d: [Int] = .init(repeating: 0, count: n+1)
    d[1] = 1
    d[2] = 1
    for i in 3...n {
        d[i] = d[i-1] + d[i-2]
    }
    return d[n]
}

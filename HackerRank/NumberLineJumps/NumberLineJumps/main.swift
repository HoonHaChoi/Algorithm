//
//  main.swift
//  NumberLineJumps
//
//  Created by HOONHA CHOI on 2021/01/27.
//

import Foundation

var kang = readLine()!.split(separator: " ").map { Int(String($0))! }

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    if v1 < v2 { return "NO" }
    return (x2-x1) % (v1-v2) == 0 ? "YES" : "NO"
}
print(kangaroo(x1: kang[0], v1: kang[1], x2: kang[2], v2: kang[3]))

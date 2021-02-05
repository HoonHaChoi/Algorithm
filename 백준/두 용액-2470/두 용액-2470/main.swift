//
//  main.swift
//  두 용액-2470
//
//  Created by HOONHA CHOI on 2021/02/05.
//

import Foundation

let input = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

var s = 0
var e = arr.count-1
var min = Int(2e9 + 1)
var result = [Int](repeating: 0, count: 2)
let sum : (Int,Int)->Int = { arr[$0] + arr[$1] }
while s < e {
    if min > abs(sum(s,e)) {
        min = abs(sum(s,e))
        result[0] = arr[s]
        result[1] = arr[e]
        if min == 0 { break }
    }
    if sum(s,e) > 0 {
        e -= 1
    } else {
        s += 1
    }
    
}
result.sorted().forEach {
    print($0, separator: "", terminator: " ")
}


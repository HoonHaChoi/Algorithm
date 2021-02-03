//
//  main.swift
//  두수의 합-3273
//
//  Created by HOONHA CHOI on 2021/02/03.
//

import Foundation

let input = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
let x = Int(readLine()!)!

var s = 0
var e = arr.count-1
var c = 0
let sum : (Int,Int)->Int = { arr[$0] + arr[$1] }

while s < e {
    if sum(s,e) == x {
        c += 1
        s += 1
        e -= 1
    } else if sum(s,e) > x { e -= 1 }
    else { s += 1 }
}
print(c)

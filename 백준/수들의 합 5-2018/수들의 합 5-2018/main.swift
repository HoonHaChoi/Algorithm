//
//  main.swift
//  수들의 합 5-2018
//
//  Created by HOONHA CHOI on 2021/02/03.
//

import Foundation

print("Hello, World!")

let input = Int(readLine()!)!
var arr = Array(1...input)

var s = 0
var e = 0
var c = 0
let sum : (Int,Int)->Int = { arr[$0...$1].reduce(0, +) }

while e < input {
    if sum(s,e) < input {
        e += 1
    } else if sum(s,e) > input {
        if s == e { e += 1}
        else { s += 1 }
    } else {
        c += 1
        if s == e { e += 1 }
        else { s += 1}
    }
}
print(c)

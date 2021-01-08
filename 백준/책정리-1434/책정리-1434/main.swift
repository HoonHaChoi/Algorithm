//
//  main.swift
//  책정리-1434
//
//  Created by HOONHA CHOI on 2021/01/08.
//

import Foundation

let input1 = readLine()!.split(separator: " ").map { Int($0)! }
let input2 = readLine()!.split(separator: " ").map { Int($0)! }
let input3 = readLine()!.split(separator: " ").map { Int($0)! }

var boxSize = input2
var bookSize = input3
var s1 = boxSize.reduce(0, { $0 + $1})
var s2 = bookSize.reduce(0, +)
print(s1-s2)

//
//  main.swift
//  제로-10773
//
//  Created by HOONHA CHOI on 2021/01/10.
//

import Foundation

var input = Int(readLine()!)!
var temp : [Int] = []
var array : [Int] = []
for _ in 0..<input {
    temp.append(Int(readLine()!)!)
}

for i in temp {
    
    if i == 0 {
        array.removeLast()
    } else {
        array.append(i)
    }
}

print(array.reduce(0, +))

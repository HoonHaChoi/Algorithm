//
//  main.swift
//  하얀 칸-1100
//
//  Created by HOONHA CHOI on 2021/01/22.
//

import Foundation

//let input = [[".F.F...F"],
//    ["F...F.F."],
//    ["...F.F.F"],
//    ["F.F...F."],
//    [".F...F.."],
//    ["F...F.F."],
//    [".F.F.F.F"],
//    ["..FF..F."]]

var input = [[String]]()
for _ in 0...7 {
    let board = readLine()!
    input.append(Array(arrayLiteral: board))
}
print(input)
var c = 0
input.enumerated().forEach { strArr in
    strArr.element.enumerated().forEach { str in
        str.element.enumerated().forEach { s in
            if strArr.offset % 2 == 0 {
                if s.offset % 2 == 0 {
                    if s.element == "F" {
                        c += 1
                    }
                }
            } else {
                if s.offset % 2 == 1{
                    if s.element == "F" {
                        c += 1
                    }
                }
            }
            
        }
    }
}
print(c)

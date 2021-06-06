//
//  main.swift
//  나무 조각-2947
//
//  Created by HOONHA CHOI on 2021/06/06.
//

import Foundation

var inputreadLine = readLine()!.split(separator: " ").map { Int(String($0))! }
var input = inputreadLine
var result = [1,2,3,4,5]

while input != result {
    for i in 0..<input.count {
        if i == 4 {
            continue
        }
        
        if input[i] > input[i+1] {
            input.swapAt(i, i+1)
            _ = input.map {
                print(String($0), separator: "", terminator: " ")
            }
            print()
        }
    }
}

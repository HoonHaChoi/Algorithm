//
//  main.swift
//  좌표 압축-18870
//
//  Created by HOONHA CHOI on 2022/02/04.
//

import Foundation

struct CoordinateCompact {
    let n: Int
    let arr: [Int]
    
    var dic: [Int: Int] = [:]
    var index = 0
    
    mutating func solution() {
        
        for i in arr.sorted() {
            if dic[i] == nil {
                dic[i] = index
                index += 1
            }
        }
        
        print(arr.map { String(dic[$0]!) }.joined(separator: " "))
    }
}

let input = Int(readLine()!)!
var arr: [Int] = []
arr.append(contentsOf: readLine()!.split(separator: " ").map { Int(String($0))! })

var cc = CoordinateCompact(n: input, arr: arr)
cc.solution()



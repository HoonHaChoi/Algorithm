//
//  main.swift
//  국회의원 선거-1417
//
//  Created by HOONHA CHOI on 2021/02/06.
//

import Foundation

let input = Int(readLine()!)!
var dasom = Int(readLine()!)!
var arr = [Int]()
var c = 0

for _ in 0..<input-1 {
    arr.append(Int(readLine()!)!)
}

if arr.filter({ $0 >= dasom}).count == 0 {
    print(c)
} else {
    while true {
        if arr.filter({ $0 >= dasom }).count == 0 {
            break
        }
        arr = arr.sorted()
        dasom += 1
        arr[arr.count-1] -= 1
        c += 1
    }
    print(c)
}

//
//  main.swift
//  프린터 큐 - 1966
//
//  Created by HOONHA CHOI on 2021/11/18.
//

import Foundation

// MARK: 프린터 큐 - 1966
let count = Int(readLine()!)!

(0..<count).forEach { _ in
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let q = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    let findDocument = input[1]
    var d: [(Int,Bool)] = []
    
    for i in 0..<q.count {
        if i == findDocument {
            d.append((q[i],true))
        } else {
            d.append((q[i],false))
        }
    }
    
    var maxValue = q.max()!
    var index = 0
    
    while true {
        if d[index].0 == maxValue {
            d[index].0 = 0
            maxValue = d.max { $0.0 < $1.0 }!.0
            if d[index].1 == true {
                break
            }
            index += 1
        } else {
            d.append(d.removeFirst())
        }
    }
    print(index+1)
}

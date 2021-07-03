//
//  main.swift
//  덩치-7568
//
//  Created by HOONHA CHOI on 2021/06/02.
//

import Foundation

let input = Int(readLine()!)!
var body = [(width: Int,height: Int)]()
var result: [Int] = []
(0..<input).forEach { _ in
   let frame = readLine()!.split(separator: " ").map { Int(String($0)) }
    body.append((width: frame[0]!, height: frame[1]!))
}

for i in body {
    var count = 1
    for j in body {
        if i == j {
            continue
        }
        
        if i.width < j.width && i.height < j.height {
            count += 1
        }
    }
    result.append(count)
}
_ = result.map {
    print("\($0)", separator: " ", terminator: " ")
}

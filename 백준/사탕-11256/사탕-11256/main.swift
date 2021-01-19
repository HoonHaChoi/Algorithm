//
//  main.swift
//  사탕-11256
//
//  Created by HOONHA CHOI on 2021/01/19.
//

import Foundation

let input = Int(readLine()!)!
for _ in 0..<input {
    let candyInfo = readLine()!.split(separator: " ").map { Int(String($0))! }
    var candyN = candyInfo[0]
    var c = 0
    var boxs = [Int]()
    
    for _ in 0..<candyInfo[1] {
        boxs.append(readLine()!.split(separator: " ").map { Int(String($0))!}.reduce(1,*))
    }
    
    boxs = boxs.sorted(by : >)
    
    for i in boxs {
        if candyN <= 0 {
            break
        }
        candyN -= i
        c += 1
    }
    print(c)
}

//
//  main.swift
//  유레카 이론-10448
//
//  Created by HOONHA CHOI on 2021/02/02.
//

import Foundation

let input = Int(readLine()!)!
var arr = [Int](repeating: 0, count: 1001)
arr.enumerated().forEach {
    arr[$0.offset] = $0.offset * ($0.offset + 1) / 2
}
arr.removeFirst() // 배열에서 0 제거
func Eureka(_ num : Int) -> Int {
    for i in arr {
        for j in arr {
            for k in arr{
                if i+j+k == num {
                    return 1
                }
                if i+j+k > num {
                    break
                }
            }
        }
    }
    return 0
}

for _ in 0..<input {
    let num = Int(readLine()!)!
    print(Eureka(num))
}

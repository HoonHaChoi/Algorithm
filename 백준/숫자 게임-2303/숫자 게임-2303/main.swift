//
//  main.swift
//  숫자 게임-2303
//
//  Created by HOONHA CHOI on 2021/01/28.
//

import Foundation

func maxNumber(_ c : [Int] ) -> Int {
    var max = 0
    for i in 0..<c.count {
        for j in 0..<c.count {
            if i == j { continue }
            for k in 0..<c.count {
                if i == k { continue }
                if j == k { continue }
                if max < (c[i] + c[j] + c[k]) % 10 {
                    max = (c[i] + c[j] + c[k]) % 10
                }
            }
        }
    }
    return max
}

let input = Int(readLine()!)!
var user = [Int]()
for _ in 0..<input {
    let card = readLine()!.split(separator: " ").map { Int(String($0))! }
    user.append(maxNumber(card))
}
for (i,v) in user.enumerated().reversed() {
    if v == user.max()! {
        print(i+1)
        break
    }
}

//
//  main.swift
//  직각삼각형 - 4153
//
//  Created by HOONHA CHOI on 2021/11/22.
//

import Foundation

// MARK: 직각삼각형 - 4153
while true {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }

    if input[0] == 0 && input[1] == 0 && input[2] == 0 {
        break
    }

    let n1 = input[0]*input[0]
    let n2 = input[1]*input[1]
    let n3 = input[2]*input[2]
    if n1 + n2 == n3 || n1 + n3 == n2 || n2 + n3 == n1 {
        print("right")
    } else {
        print("wrong")
    }
}

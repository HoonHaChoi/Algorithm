//
//  main.swift
//  SavethePrisoner!
//
//  Created by HOONHA CHOI on 2021/01/27.
//

import Foundation

var input = Int(readLine()!)!
func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
    if m % n == 0 {
        if (n + s - 1) % n == 0 {
            return n
        } else {
            return (n + s - 1) % n
        }
    } else {
        if (m % n + s - 1) > n{
            return (m % n + s - 1) % n
        } else {
            return m % n + s - 1
        }
    }
}

for _ in 0..<input {
    let arr = readLine()!.split(separator: " ").map { Int(String($0))! }
    print(saveThePrisoner(n: arr[0], m: arr[1], s: arr[2]))
}

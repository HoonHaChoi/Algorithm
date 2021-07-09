//
//  main.swift
//  두 배열의 원소 교체
//
//  Created by HOONHA CHOI on 2021/07/09.
//

import Foundation
// MARK: 두 배열의 원소 교체

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]

var Aarr: [Int] = []
var Barr: [Int] = []

Aarr.append(contentsOf: readLine()!.split(separator: " ").map { Int(String($0))! })
Barr.append(contentsOf: readLine()!.split(separator: " ").map { Int(String($0))! })

Aarr = Aarr.sorted()
Barr = Barr.sorted(by: >)

for i in 0..<k {
    swap(&Aarr[i], &Barr[i])
}

print(Aarr.reduce(0 , +))

//5 3
//1 2 5 4 3
//5 5 6 6 5

//
//  main.swift
//  일곱난쟁이-2309
//
//  Created by HOONHA CHOI on 2021/07/26.
//

import Foundation
// MARK: 일곱 난쟁이 2309
var arr: [Int] = []

for _ in 0...8 {
    arr.append(Int(readLine()!)!)
}

var sum = arr.reduce(0, +)
var pop: [Int] = []
for i in stride(from: 8, through: 0, by: -1) {
    for j in stride(from: 7, through: 0, by: -1) {
        if sum - (arr[i]+arr[j]) == 100 {
            pop.append(i)
            pop.append(j)
            break
        }
    }
}

arr.remove(at: pop[0])
arr.remove(at: pop[1])
arr.sorted().forEach {
    print($0)
}

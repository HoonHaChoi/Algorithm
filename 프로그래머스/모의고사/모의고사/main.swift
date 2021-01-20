//
//  main.swift
//  모의고사
//
//  Created by HOONHA CHOI on 2021/01/20.
//

import Foundation

func solution(_ array : [Int]) -> [Int]{
    var answer = [Int]()
    let way1 = [1,2,3,4,5]
    let way2 = [2,1,2,3,2,4,2,5]
    let way3 = [3,3,1,1,2,2,4,4,5,5]
    var m1 : [Int:Int] = [1:0 , 2:0 ,3:0]
    for i in 0..<array.count {
        if array[i] == way1[i % 5] { m1[1]! += 1}
        if array[i] == way2[i % 8] { m1[2]! += 1}
        if array[i] == way3[i % 10] { m1[3]! += 1}
    }
    var total = max(m1[1]!,m1[2]!,m1[3]!)
    for i in m1 {
        if i.value == total {
            answer.append(i.key)
        }
    }
    return answer.sorted()
}

//
//  main.swift
//  프린터
//
//  Created by HOONHA CHOI on 2021/01/20.
//

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var prior = [[Int]](repeating: [], count: priorities.count)
    var c = 0
    for (index,value) in priorities.enumerated() {
        prior[index] = [value,index]
    }
    while true {
        let maxV = prior.map { $0[0] }.max()!

        if prior[0][0] != maxV {
            prior.append(prior.removeFirst())
        } else {
            if prior[0][1] == location {
                break
            }
            c += 1
            prior.removeFirst()
        }
    }

    return c + 1
}
print(solution([2,1,3,2], 2)) // 1
print(solution([1,1,9,1,1,1], 0)) // 5
print(solution([1,4,9,1,1,1], 1)) // 2

//
//  main.swift
//  예산
//
//  Created by HOONHA CHOI on 2021/01/20.
//

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var c = 0
    var s = 0
    let d = d.sorted(by : <)
    print(d)
    for i in d {
        s += i
        if s > budget {
            break
        }
        c += 1


    }
    return c
}
print(solution([1,3,2,5,4], 9))

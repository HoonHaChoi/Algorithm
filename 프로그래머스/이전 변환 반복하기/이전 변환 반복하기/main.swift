//
//  main.swift
//  이전 변환 반복하기
//
//  Created by HOONHA CHOI on 2021/06/04.
//

import Foundation

func solution(_ s:String) -> [Int] {
    var value = s
    var count = 0
    var zeroCount = 0
    var resultArray: [Int] = []
    while value != "1" {
        zeroCount += Array(value).filter { $0 == "0"}.count
        value = String(Array(value).filter { $0 != "0" }.count, radix: 2)
        count += 1
    }
    resultArray.append(count)
    resultArray.append(zeroCount)
    return resultArray
}

print(solution("1111111"))

//
//  main.swift
//  연속합-1912
//
//  Created by HOONHA CHOI on 2021/07/20.
//

import Foundation
// MARK: 연속 합 -1912
let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").map { Int(String($0))! }

var sum = 0
var ret = -1000 // 최소값
for i in 0..<nums.count {
    sum = max(sum,0) + nums[i]
    ret = max(sum, ret)
}

print(ret)

// 실패 (시간 초과) n2
//for i in 0..<nums.count {
    //    var j = i
    //    while j < nums.count {
    //        if result < nums[i...j].reduce(0, +) {
    //            result = nums[i...j].reduce(0, +)
    //        }
    //        j += 1
    //    }
//}

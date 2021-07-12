//
//  main.swift
//  떡볶이 떡 만들기
//
//  Created by HOONHA CHOI on 2021/07/12.
//

import Foundation
// MARK: 떡볶이 떡 만들기
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var length = readLine()!.split(separator: " ").map { Int(String($0))! }

var s = 0
var e = length.max()!

func binarySearch(target: Int) -> Int {
    
    while s<=e {
        let mid = (s+e)/2
        let height = changeHeight(mid: mid)
        
        if height == m {
            return mid
        } else if height < m {
            e = mid-1
        } else {
            s = mid+1
        }
    }
    return -1
}

func changeHeight(mid: Int) -> Int {
    var sum = 0
    for i in length {
        if (i - mid) < 0 {
            continue
        }
        sum += i - mid
    }
    return sum
}
print(binarySearch(target: m))

//4 64 6
//19 15 10 17

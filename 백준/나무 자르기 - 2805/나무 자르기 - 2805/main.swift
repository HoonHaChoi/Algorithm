//
//  main.swift
//  나무 자르기 - 2805
//
//  Created by HOONHA CHOI on 2021/11/16.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let trees = readLine()!.split(separator: " ").map { Int(String($0))! }

let n = input[0]
let m = input[1]
/*
나무의 높이가 20, 15, 10, 17이라고 하자.
상근이가 높이를 15로 지정했다면, 나무를 자른 뒤의 높이는 15, 15, 10, 15가 될 것이고, 상근이는 길이가 5인 나무와 2인 나무를 들고 집에 갈 것이다.
가져가기 위해서 절단기 설정할 수 있는 높이의 최댓값
*/

var start = 1
var end = trees.max()!

var heights = 0

while start <= end {
    
    let height = (start + end) / 2
    let length = trees.filter { $0 > height }.map { $0 - height }.reduce(0, +)

    if length >= m {
        heights = max(heights, height)
    }
    
    if length > m {
        start = height+1
    } else {
        end = height-1
    }
}
print(heights)

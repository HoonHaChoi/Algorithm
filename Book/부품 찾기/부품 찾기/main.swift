//
//  main.swift
//  부품 찾기
//
//  Created by HOONHA CHOI on 2021/07/12.
//

import Foundation
// MARK: 부품 찾기
let n = Int(readLine()!)!
var totalNumber = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
let m = Int(readLine()!)!
var needNumber = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()

var s = 0
var e = totalNumber.count - 1

func binarySearch(arr: [Int], start: Int, end: Int, target: Int) -> String {

    var s = start
    var e = end

    while s<=e {
        let mid = (s+e)/2
        if arr[mid] == target {
            return "yes"
        } else if arr[mid] < target {
            s = mid+1
        } else {
            e = mid-1
        }
    }
    return "no"
}

for i in needNumber {
    print(binarySearch(arr: totalNumber, start: s, end: e, target: i), separator: "", terminator: " ")
}


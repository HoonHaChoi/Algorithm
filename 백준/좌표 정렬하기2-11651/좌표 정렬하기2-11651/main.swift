//
//  main.swift
//  좌표 정렬하기2-11651
//
//  Created by HOONHA CHOI on 2021/01/11.
//

import Foundation
// MARK: 좌표 정렬하기-11650 2회차
let n = Int(readLine()!)!
var xy: [(Int,Int)] = []

for _ in 0..<n {
    let xyInput = readLine()!.split(separator: " ").map { Int(String($0))! }
    xy.append((xyInput[0], xyInput[1]))
}

xy.sorted() {
    if $0.0 == $1.0 {
        return $0.1 < $1.1
    }
    return $0.0 < $1.0
}.forEach {
    print($0, $1)
}


//var array : [(Int,Int)] = []
//let input = Int(readLine()!)!
//
//for _ in 1...input {
//    let num = readLine()!.split(separator: " ").map { Int(String($0))! }
//    array.append((num[0], num[1]))
//}
//
//array = array.sorted(by: { (a, b) -> Bool in
//    if a.1 == b.1 {
//        return a.0 < b.0
//    }
//
//    return a.1 < b.1
//})
//
//for i in array {
//    print(i.0, i.1)
//}

//
//  main.swift
//  단어 정렬-1181
//
//  Created by HOONHA CHOI on 2021/07/28.
//

import Foundation
// MARK: 단어 정렬-1181 2회차
let n = Int(readLine()!)!
var w: Set<String> = []

for _ in 0..<n {
    w.insert(readLine()!)
}

w.sorted() {
    if $0.count == $1.count {
        return $0 < $1
    }
    return $0.count < $1.count
}.forEach { word in
    print(word)
}


//var value = Int(readLine()!)!
//var list : Set<String> = []
//for _ in 0..<value {
//    list.insert(readLine()!)
//}
//var result = list.sorted() {
//    if $0.count == $1.count {
//        return $0 < $1
//    }
//    return $0.count < $1.count
//}
//
//for i in result {
//    print(i)
//}

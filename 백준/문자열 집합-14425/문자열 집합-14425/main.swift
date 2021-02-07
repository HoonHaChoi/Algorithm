//
//  main.swift
//  문자열 집합-14425
//
//  Created by HOONHA CHOI on 2021/02/07.
//

import Foundation

let input = readLine()!.split(separator:" ").map { Int(String($0))!}
var texts = Set<String>()
var strdata = [String]()
for _ in 0..<input[0] {
    texts.insert(readLine()!)
}
for _ in 0..<input[1] {
    strdata.append(readLine()!)
}
var c = 0
strdata.forEach {
    if texts.contains($0) {
        c += 1
    }
}
print(c)

//
//  main.swift
//  성적이 낮은 순서로 학생 출력하기
//
//  Created by HOONHA CHOI on 2021/07/09.
//

import Foundation
// MARK: 성적이 낮은 순서로 학생 출력하기
let input = Int(readLine()!)!

var result: [(String, Int)] = []
for _ in 0..<input {
    let temp = readLine()!.split(separator: " ").map { String($0)}
    result.append((temp[0], Int(temp[1])!))
}

result = result.sorted(by: {
    $0.1 < $1.1
})

for i in result {
    print(i.0, separator: "", terminator: " ")
}

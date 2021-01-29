//
//  main.swift
//  찍기-2966
//
//  Created by HOONHA CHOI on 2021/01/29.
//

import Foundation

let a = ["A","B","C"]
let b = ["B","A","B","C"]
let c = ["C","C","A","A","B","B"]

var answer = [Int](repeating: 0, count: 3)

let input = Int(readLine()!)!
let problem = readLine()!.map { String($0) }

problem.enumerated().forEach {
    if $0.element == a[$0.offset % a.count] { answer[0] += 1 }
    if $0.element == b[$0.offset % b.count] { answer[1] += 1 }
    if $0.element == c[$0.offset % c.count] { answer[2] += 1 }
}

print(answer.max()!)
answer.enumerated().forEach {
    if $0.element == answer.max()! {
        if $0.offset == 0 {
            print("Adrian")
        }
        if $0.offset == 1 {
            print("Bruno")
        }
        if $0.offset == 2 {
            print("Goran")
        }
    }
}


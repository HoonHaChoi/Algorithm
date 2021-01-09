//
//  main.swift
//  UCPC는 무엇의 약자일까-15904
//
//  Created by HOONHA CHOI on 2021/01/09.
//

import Foundation

let input = readLine()!.map { String($0) }

func ucpc(_ text : [String]) -> String {
    var index = 0
    var result = ""
    for i in 0..<text.count {
        if text[i] == "U" {
            index = i
            result += "U"
            break
        }
    }
    
    for i in index..<text.count {
        if text[i] == "C" {
            index = i
            result += "C"
            break
        }
    }
    
    for i in index..<text.count {
        if text[i] == "P" {
            index = i
            result += "P"
            break
        }
    }
    
    for i in index..<text.count {
        if text[i] == "C" {
            index = i
            result += "C"
            break
        }
    }
    return result
}

if ucpc(input) == "UCPC" {
    print("I love UCPC")
} else {
    print("I hate UCPC")
}


//
//  main.swift
//  숫자 카드2-10816
//
//  Created by HOONHA CHOI on 2021/01/17.
//

import Foundation

/*
 10
 6 3 2 10 10 10 -10 -10 7 3
 8
 10 9 -5 2 3 4 5 -10
 */
let m = Int(readLine()!)!
var mArr = readLine()!.split(separator:" ").map { Int(String($0))! }
let n = Int(readLine()!)!
var nArr = readLine()!.split(separator:" ").map { Int(String($0))! }
var dic = [Int:Int]()
for i in mArr {
    if dic.keys.contains(i) {
        dic[i]! += 1
    } else {
        dic[i] = 1
    }
}

var result = [Int]()
for i in nArr {
    if dic.keys.contains(i){
        result.append(dic[i]!)
    } else {
        result.append(0)
    }
}

var text = ""
for i in result {
    text += "\(i) "
}
print(text)

/*
 3 0 0 1 2 0 0 2
 */

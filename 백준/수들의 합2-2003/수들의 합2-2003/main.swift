//
//  main.swift
//  수들의 합2-2003
//
//  Created by HOONHA CHOI on 2021/02/02.
//  두포인터 알고리즘

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = input[1]
var arr = readLine()!.split(separator: " ").map { Int(String($0))! }

var s = 0 // start
var e = 0 // end
var c = 0 // count

func sum(_ a : Int , _ b : Int) -> Int{
    return arr[a...b].reduce(0, +)
}

while e < arr.count && s <= e {
    if sum(s,e) < m {
        e += 1
    } else if sum(s,e) > m {
        if s == e { e += 1 } // 10 1 나왔고 s == e 같을때
        else { s += 1 }
    } else {
        c += 1
        if s == e { e += 1 }
        else { s += 1 }
    }
}
print(c)

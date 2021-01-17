//
//  main.swift
//  단어순서 뒤집기-12605
//
//  Created by HOONHA CHOI on 2021/01/17.
//

import Foundation
/*
 3
 this is a test
 foobar
 all your base
*/
let input = Int(readLine()!)!
var words : [String] = []
for _ in 1...input {
    words.append(readLine()!)
}

for i in 0..<words.count {
    var w = words[i].split(separator: " ").map { String($0) }
    w = w.reversed().map { String($0) }

    print("Case #\(i+1): ", separator: "", terminator: "")
    for j in w {
        print(j, separator: "", terminator: " ")
    }
    print()
}
/*
 Case #1: test a is this
 Case #2: foobar
 Case #3: base your all
 */

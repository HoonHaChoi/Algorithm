//
//  main.swift
//  회사에 있는 사람-7785
//
//  Created by HOONHA CHOI on 2021/02/07.
//

import Foundation

let input = Int(readLine()!)!
var dic : [String:String] = [:]

for _ in 0..<input {
    let employee = readLine()!.split(separator: " ").map { String($0) }
    dic[employee[0]] = employee[1]
}

dic.filter { $0.value == "enter"}.map { $0.key }.sorted(by : >).forEach {
    print($0)
}

//
//  main.swift
//  TimeConversion
//
//  Created by HOONHA CHOI on 2021/01/27.
//

import Foundation

let input = readLine()!
func timeConversion(s: String) -> String {
    var input = s.map { String($0) }
    
    let hour = { Int(input[0] + input[1])!}
    let hourAdd = { String(Int(input[0] + input[1])! + 12) + input[2...7].joined() }
    
    if input[8] == "P" && hour() < 12 {
        return hourAdd()
    } else if input[8] == "A" && hour() == 12 {
        input[0] = "0"
        input[1] = "0"
        return input[0...7].joined()
    } else {
        return input[0...7].joined()
    }
}
print(timeConversion(s: input))

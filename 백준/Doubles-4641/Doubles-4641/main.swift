//
//  main.swift
//  Doubles-4641
//
//  Created by HOONHA CHOI on 2021/01/28.
//

import Foundation

while true {
    let input = readLine()!

    if input == "-1" { break }

    let doubles = input.split(separator: " ")
        .map { Int(String($0))! }
        .filter { $0 != 0 }
    var c = 0
    doubles.enumerated().forEach {
        if doubles.contains($0.element * 2) {
            c += 1
        }
    }
    print(c)
}

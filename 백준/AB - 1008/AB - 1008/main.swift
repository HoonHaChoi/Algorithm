//
//  main.swift
//  AB - 1008
//
//  Created by HOONHA CHOI on 2021/11/15.
//

import Foundation

// MARK: A / B - 1008
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
print(Double(input[0]) / Double(input[1]))

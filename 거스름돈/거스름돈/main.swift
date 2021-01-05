//
//  main.swift
//  거스름돈
//
//  Created by HOONHA CHOI on 2021/01/05.
//

import Foundation

var input = Int(readLine() ?? "") ?? 0
input = 1000 - input
var changeCount = 0
    changeCount += input / 500
    input = input % 500
    
    changeCount += input / 100
    input = input % 100
    changeCount += input / 50
    input = input % 50
    changeCount += input / 10
    input = input % 10
    changeCount += input / 5
    input = input % 5
    changeCount += input / 1
    input = input % 1

print(changeCount)



//
//  main.swift
//  피보나치 수-10870
//
//  Created by HOONHA CHOI on 2021/06/09.
//

import Foundation

let input = Int(readLine()!)!

func fibonaci(n: Int) -> Int {
    if n == 1 {
        return 1
    }
    if n == 0 {
        return 0
    }
    
    return fibonaci(n: n-1)+fibonaci(n: n-2)
}

print(fibonaci(n: input))

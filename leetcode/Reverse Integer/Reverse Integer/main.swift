//
//  main.swift
//  Reverse Integer
//
//  Created by HOONHA CHOI on 2021/01/13.
//

import Foundation

func reverse(_ x: Int) -> Int {
    if x == 0 {
        return 0
    }
    
    let minusCheck = { x < 0 }
    var strX = String(String(abs(x)).reversed())
    
    if minusCheck() {
        strX = "-" + strX
    }
    
    if Int32.min < Int(strX)! || Int(strX)! > Int32.max {
        return 0
    }
    return Int(strX)!
}
print(reverse(123))
//print(reverse(-123))

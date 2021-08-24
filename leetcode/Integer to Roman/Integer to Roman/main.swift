//
//  main.swift
//  Integer to Roman
//
//  Created by HOONHA CHOI on 2021/08/24.
//

import Foundation
// MARK: Integer to Roman
func intToRoman(_ num: Int) -> String {
    
    let symbols = ["M","CM","D","CD","C","XC","L","XL","X","IX","V","IV","I"]
    let numbers = [1000,900,500,400,100,90,50,40,10,9,5,4,1]
    
    var symbol = "", number = num
    
    while number != 0 {
        for (i,v) in numbers.enumerated() {
            if number - v >= 0 {
                number -= v
                symbol += symbols[i]
                break
            }
        }
    }
    return symbol
}
print(intToRoman(3))
print(intToRoman(4))
print(intToRoman(9))
print(intToRoman(56))
print(intToRoman(345))
print(intToRoman(1994))

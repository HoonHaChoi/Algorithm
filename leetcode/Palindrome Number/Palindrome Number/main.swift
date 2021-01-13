//
//  main.swift
//  Palindrome Number
//
//  Created by HOONHA CHOI on 2021/01/13.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    if x < 0 {
        return false
    }
    return String(x) == String(String(x).reversed())
}

print(isPalindrome(124))
print(isPalindrome(121))

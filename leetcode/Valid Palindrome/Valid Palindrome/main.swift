//
//  main.swift
//  Valid Palindrome
//
//  Created by HOONHA CHOI on 2021/09/23.
//

import Foundation

// MARK: Valid Palindrome
func isPalindrome(_ s: String) -> Bool {
    
    let p = rex(s: s)
    let half = p.count/2
    
    if p.isEmpty || p.count == 1 {
        return true
    }
    
    if p.count % 2 == 0 {
        let left = p[0...half-1].map { String($0) }
        let right = p[half...p.count-1].reversed().map { String($0) }
        return left == right
    }
    
    let left = p[0...half-1].map { String($0) }
    let right = p[half+1...p.count-1].reversed().map { String($0) }
    return left == right
}

func rex(s: String) -> [String] {
    let regex = try? NSRegularExpression(pattern: "[a-zA-Z0-9]", options: .caseInsensitive)
    let match = regex?.matches(in: s,
                               range: NSRange(s.startIndex..., in: s))
    let result = match?.compactMap {
        String(s[Range($0.range, in: s)!]).lowercased()
    }
    return result ?? []
}

print(isPalindrome("A man, a plan, a canal: Panama"))
print(isPalindrome("race a car"))
print(isPalindrome("aa"))

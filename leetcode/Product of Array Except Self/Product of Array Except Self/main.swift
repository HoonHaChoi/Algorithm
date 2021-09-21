//
//  main.swift
//  Product of Array Except Self
//
//  Created by HOONHA CHOI on 2021/09/21.
//

import Foundation

// MARK: Product of Array Except Self
func productExceptSelf(_ nums: [Int]) -> [Int] {
     

    var p: [Int] = []
    var s: [Int] = []
    
    for i in 0..<nums.count {
        if p.isEmpty {
            p.append(nums[i])
        } else {
            p.append(p.last! * nums[i])
        }
    }
    
    for j in (0..<nums.count).reversed() {
        if s.isEmpty {
            s.append(nums[j])
        } else {
            s.append(s.last! * nums[j])
        }
    }
    
    s = s.reversed()
    var ans: [Int] = []
    
    for x in 0..<nums.count {
        if x == 0 {
            ans.append(1 * s[x+1])
        } else if x == nums.count - 1 {
            ans.append(p[x-1] * 1)
        } else {
            ans.append(p[x-1] * s[x+1])
        }
        print(x)
    }
    
    return ans
}

//print(productExceptSelf([1,2,3,4]))
//print(productExceptSelf([-1,1,0,-3,3]))
//print(productExceptSelf([0,1,2,3,4,0]))

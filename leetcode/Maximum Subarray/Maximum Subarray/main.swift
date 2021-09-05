//
//  main.swift
//  Maximum Subarray
//
//  Created by HOONHA CHOI on 2021/09/05.
//

import Foundation

// MARK: 53. Maximum Subarray
func maxSubArray(_ nums: [Int]) -> Int {
    var d: [Int] = .init(repeating: 0, count: 30001)
    
    if nums.count == 1 {
        return nums.first!
    }
    
    d[0] = nums[0]
    d[1] = max(d[0]+nums[1], nums[1])

    for i in 2..<nums.count {
        d[i] = max(d[i-1]+nums[i], nums[i])
    }
    
    return d[0..<nums.count].max()!
}

print(maxSubArray([-2,1,-3,4,-1,2,1,-5,4]))
print(maxSubArray([5,4,-1,7,8]))

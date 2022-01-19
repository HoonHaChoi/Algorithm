//
//  main.swift
//  189. Rotate Array
//
//  Created by HOONHA CHOI on 2021/12/11.
//

import Foundation


func rotate(_ nums: inout [Int], _ k: Int) {
    (0..<k).forEach { _ in
        let lastValue = nums.removeLast()
        nums = [lastValue] + nums
    }
    print(nums)
}

var array = [1,2,3,4,5,6,7]
rotate(&array, 3)

//Input: nums = [1,2,3,4,5,6,7], k = 3
//Output: [5,6,7,1,2,3,4]

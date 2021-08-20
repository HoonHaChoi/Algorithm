//
//  main.swift
//  ContainerWithMostWater
//
//  Created by HOONHA CHOI on 2021/08/20.
//

import Foundation
// MARK: 11. Container With Most Water
func maxArea(_ height: [Int]) -> Int {
    
    var start = 0
    var end = height.count-1
    
    var area = min(height[start],height[end])*(end-start)
    
    while start < end {
        
        let min = min(height[start],height[end])*(end-start)
        
        if area < min {
            area = min
        }
        
        if height[start] < height[end] {
            start += 1
        } else {
            end -= 1
        }
        
    }
    return area
}
print(maxArea([2,3,10,5,7,8,9]))
//print(maxArea([3,9,3,4,7,2,12,6]))
//print(maxArea([4,3,2,1,4]))
//print(maxArea([1,8,6,2,5,4,8,3,7]))

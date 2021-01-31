//
//  main.swift
//  278. First Bad Version
//
//  Created by HOONHA CHOI on 2021/01/31.
//

import Foundation

/**
 * The knows API is defined in the parent class VersionControl.
 *     func isBadVersion(_ version: Int) -> Bool{}
 */

class Solution : VersionControl {
    func firstBadVersion(_ n: Int) -> Int {
        var start = 0
        var end = n
        var mid = 0
        
        while start <= end {
            mid = (start+end)/2
            if isBadVersion(mid) {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        return end + 1
    }
}


//
//  main.swift
//  374. Guess Number Higher or Lower
//
//  Created by HOONHA CHOI on 2021/01/31.
//

import Foundation

/**
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return          -1 if the picked number is lower than your guess number
 *                  1 if the picked number is higher than your guess number
 *               otherwise return 0
 * func guess(_ num: Int) -> Int
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var start = 0
        var end = n
        var mid = 0
        
        while start <= end {
            mid = (start+end)/2
            if guess(mid) == 0 {
                break
            }
            if guess(mid) == -1 {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        return mid
    }
}

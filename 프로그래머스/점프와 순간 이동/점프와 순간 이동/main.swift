//
//  main.swift
//  점프와 순간 이동
//
//  Created by HOONHA CHOI on 2021/01/21.
//

import Foundation

func solution(_ n:Int) -> Int
{
    var ans:Int = 1
    var n = n
    
    while n / 2 != 0 {
        ans += n % 2
        n /= 2
    }
    return ans
}
print(solution(5))
print(solution(6))
print(solution(5000))

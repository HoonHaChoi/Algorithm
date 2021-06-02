//
//  main.swift
//  로또의 최고 순위와 최저 순위
//
//  Created by HOONHA CHOI on 2021/06/03.
//

import Foundation

//[44, 1, 0, 0, 31, 25]    [31, 10, 45, 1, 6, 19]    [3, 5]
//[0, 0, 0, 0, 0, 0]    [38, 19, 20, 40, 15, 25]    [1, 6]
//[45, 4, 35, 20, 3, 9]    [20, 9, 3, 45, 4, 35]    [1, 1]
//1    6개 번호가 모두 일치
//2    5개 번호가 일치
//3    4개 번호가 일치
//4    3개 번호가 일치
//5    2개 번호가 일치
//6(낙첨)    그 외

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var result = [0,0]
    var count = 0
    for i in win_nums {
        if lottos.contains(i) {
            count += 1
        }
    }
    
    result[1] = checkZero(num: count)
    result[0] = result[1] - lottos.filter { $0 == 0 }.count
    
    if result[0] == 0 {
        result[0] = 1
    }
    
    return result
}

func checkZero(num: Int) -> Int {
    if num == 0 {
        return 7 - 1
    }
    return 7 - num
}

print(solution([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]))
print()
print(solution([0, 0, 0, 0, 0, 0] ,[38, 19, 20, 40, 15, 25]))
print()
print(solution([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35]))


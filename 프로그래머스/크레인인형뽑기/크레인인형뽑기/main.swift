//
//  main.swift
//  크레인인형뽑기
//
//  Created by HOONHA CHOI on 2021/01/20.
//

import Foundation

//MARK: 프로그래머스 크레인 인형뽑기 게임
func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
  
    var c = 0
    var arr = [[Int]](repeating: [], count: board.count)
    
    board.reversed().forEach {
        $0.enumerated().forEach {
            if $0.element != 0 {
                arr[$0.offset].append($0.element)
            }
        }
    }
    
    var result = [Int]()
    
    moves.forEach {
        if arr[$0-1].count != 0 {
            if result.count >= 1 && result.last == arr[$0-1].last {
                result.removeLast()
                arr[$0-1].popLast()!
                c += 2
            } else {
                result.append(arr[$0-1].popLast() ?? 0)
            }
        }
    }
    return c
}
print(solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]))

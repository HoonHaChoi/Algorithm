//
//  main.swift
//  K번째 수
//
//  Created by HOONHA CHOI on 2021/01/20.
//

import Foundation

func solution(_ array : [Int], _ commands : [[Int]] ) -> [Int] {
    var result = [Int]()
    commands.forEach { (value) in
        result.append(array[value[0] - 1...value[1] - 1].sorted()[value[2] - 1])
    }
    return result
}

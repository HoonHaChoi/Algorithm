//
//  main.swift
//  오픈채팅방
//
//  Created by HOONHA CHOI on 2021/07/22.
//

import Foundation
// MARK: 오픈채팅방
func solution(_ record:[String]) -> [String] {
    var table: [[String]] = []
    
    for i in 0..<record.count {
        let split = record[i].split(separator: " ").map { String($0) }
        table.append(split)
    }
    var dic: [String: String] = [:]
    
    for i in 0..<table.count {
        if table[i][0] == "Enter" || table[i][0] == "Change" {
            dic[table[i][1]] = table[i][2]
        }
    }
    
    var result = [String]()
    
    for i in 0..<table.count {
        if table[i][0] == "Enter" {
            result.append("\(dic[table[i][1]]!)님이 들어왔습니다.")
        } else if table[i][0] == "Leave" {
            result.append("\(dic[table[i][1]]!)님이 나갔습니다.")
        } else {
            continue
        }
    }

    return result
}

print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))

//
//  main.swift
//  치킨배달-15686
//
//  Created by HOONHA CHOI on 2022/02/03.
//

import Foundation

struct ChickenDelivery {
    let n: Int
    let m: Int
    let arr: [[Int]]
    
    var chickenHouse: [[Int]] = []
    var house: [[Int]] = []
    
    var checkChickHouse: [Int] = []
    var res = 213123123
    mutating func solution() {
        checkChickHouse = .init(repeating: 0, count: m)
        for i in 0..<arr.count {
            for j in 0..<arr.count {
                if arr[i][j] == 2 {
                    chickenHouse.append([i,j])
                }
                if arr[i][j] == 1 {
                    house.append([i,j])
                }
            }
        }
        dfs(v: 0, s: 0)
        print(res)
    }
    
    mutating func dfs(v: Int, s: Int) {
        if v == m {
            
            var sum = 0
            
            for i in 0..<house.count {
                let x1 = house[i][0]
                let y1 = house[i][1]
                var dis = 212312312
                for j in checkChickHouse {
                    let x2 = chickenHouse[j][0]
                    let y2 = chickenHouse[j][1]
                    
                    dis = min(dis, (abs(x1-x2) + abs(y1-y2)))
                }
                sum += dis
            }
            if sum < res {
                res = sum
            }
        } else {
            for i in s..<chickenHouse.count {
                checkChickHouse[v] = i
                dfs(v: v+1, s: i+1)
            }
        }
    }
}

var arr: [[Int]] = []
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
for _ in 0..<input[0] {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}
var cd = ChickenDelivery(n: input[0], m: input[1], arr: arr)
cd.solution()

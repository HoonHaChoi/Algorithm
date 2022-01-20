//
//  main.swift
//  유기농배추-1012
//
//  Created by HOONHA CHOI on 2022/01/21.
//

import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = input[0]
    let m = input[1]
    let k = input[2]
    
    var arr: [[Int]] = []
    for _ in 0..<k {
        arr.append(readLine()!.split(separator: " ").map { Int(String($0))!})
    }
    
    var o = OrganicCabbage(n: n, m: m, nmCount: k, arr: arr)
    o.solution()
}

struct OrganicCabbage {
    let n: Int
    let m: Int
    let nmCount: Int
    let arr: [[Int]]
    
    lazy var cabbageMap: [[Int]] = .init(repeating: .init(repeating: 0, count: m), count: n)
    
    lazy var ch: [[Int]] = .init(repeating: .init(repeating: 0, count: m), count: n)
    
    let dx = [-1,1,0,0]
    let dy = [0,0,1,-1]
    
    var cnt = 0
    mutating func solution() {
        for i in 0..<arr.count {
            cabbageMap[arr[i][0]][arr[i][1]] = 1
        }
        
//        cabbageMap.forEach {
//            print($0)
//        }
        
        for i in 0..<n {
            for j in 0..<m {
                if cabbageMap[i][j] == 1 && ch[i][j] == 0 {
                        dfs(i: i, j: j)
                        cnt+=1
                }
            }
        }
        print(cnt)
    }
    
    mutating func dfs(i: Int, j: Int) {
        ch[i][j] = 1
        
        for k in 0...3 {
            let a = i + dx[k]
            let b = j + dy[k]
            
            if 0 <= a && a < n && 0 <= b && b < m {
                if cabbageMap[a][b] == 1 && ch[a][b] == 0 {
                    dfs(i: a, j: b)
                }
            }
        }
    }
}

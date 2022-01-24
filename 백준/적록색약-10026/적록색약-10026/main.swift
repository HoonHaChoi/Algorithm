//
//  main.swift
//  적록색약-10026
//
//  Created by HOONHA CHOI on 2022/01/25.
//

import Foundation

struct RedGreenBlindness {
    let n: Int
    let arr: [[String]]
    
    lazy var nomalCh: [[Int]] = .init(repeating: .init(repeating: 0, count: n), count: n)
    lazy var blindCh: [[Int]] = .init(repeating: .init(repeating: 0, count: n), count: n)
    
    let dx = [-1,0,1,0]//[-1,1,0,0]
    let dy = [0,1,0,-1]//[0,0,-1,1]
    
    var cnt1 = 0
    var cnt2 = 0
    
    var currentColor = ""
    
    var currentColors: [String] = []
    let redGreen = ["R","G"]
    let blue = ["B"]
    
    mutating func solution() {
        for i in 0..<n {
            for j in 0..<n {
                if nomalCh[i][j] == 0 {
                    currentColor = arr[i][j]
                    dfs(i: i, j: j)
                    cnt1 += 1
                }
                
                if blindCh[i][j] == 0 {
                    if arr[i][j] == "R" || arr[i][j] == "G" {
                        currentColors = redGreen
                    } else {
                        currentColors = blue
                    }
                    blindDfs(i: i, j: j)
                    cnt2 += 1
                }
            }
        }
        
        print(cnt1, cnt2)
    }
    
    mutating func dfs(i: Int, j: Int) {
        nomalCh[i][j] = 1
        
        for k in 0...3 {
            let x = i + dx[k]
            let y = j + dy[k]
            
            if 0 <= x && x < n && 0 <= y && y < n {
                if nomalCh[x][y] == 0 && arr[x][y] == currentColor {
                    dfs(i: x, j: y)
                }
            }
        }
    }
    
    mutating func blindDfs(i: Int, j: Int) {
        blindCh[i][j] = 1
        
        for k in 0...3 {
            let x = i + dx[k]
            let y = j + dy[k]
            
            if 0 <= x && x < n && 0 <= y && y < n {
                if blindCh[x][y] == 0 && currentColors.contains(arr[x][y]) {
                    blindDfs(i: x, j: y)
                }
            }
        }
    }
    
}

let n = Int(readLine()!)!
var arr: [[String]] = []
for _ in 0..<n {
    arr.append(readLine()!.map{ String($0)})
}
var rgb = RedGreenBlindness(n: n, arr: arr)
rgb.solution()



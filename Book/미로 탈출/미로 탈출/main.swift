//
//  main.swift
//  미로 탈출
//
//  Created by HOONHA CHOI on 2021/07/08.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

var mazeMap: [[Int]] = [[]]
for _ in 0..<n {
    mazeMap.append(readLine()!.map { Int(String($0))! })
}
mazeMap.removeFirst()

//상,하,좌,우
let di = [-1,1,0,0]
let dj = [0,0,-1,1]

func exitMaze(i: Int, j: Int) -> Int {
    var queue: [(Int,Int)] = []
    queue.append((i,j))
    
    while queue.isEmpty == false {
        let pop = queue.removeFirst()
        let y = pop.0
        let x = pop.1
        
        // 상하좌우 네 방향
        for k in 0..<4 {
            let ni = y + di[k]
            let nj = x + dj[k]
            
            if ni < 0 || nj < 0 || ni >= n || nj >= m {
                continue
            }
            
            if mazeMap[ni][nj] == 0 {
                continue
            }
            
            if mazeMap[ni][nj] == 1 {
                mazeMap[ni][nj] = mazeMap[y][x] + 1
                queue.append((ni,nj))
            }
        }
    }
    return mazeMap[n-1][m-1]
}

func notBFSExitMaze(map: [[Int]]){
    var emSpace = 1
    
    var i = 0
    var j = 0
    
    while i != n-1 || j != m-1 {
        
        if map[i+1][j] != 0 && i + 1 <= n-1 {
            i += 1
            emSpace += 1
        } else if map[i][j+1] != 0 && j + 1 <= m-1 {
            j += 1
            emSpace += 1
        }
    }
    print(emSpace)
}

print(exitMaze(i: 0, j: 0))
//notBFSExitMaze(map: mazeMap)

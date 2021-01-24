//
//  main.swift
//  DFS와 BFS-1260
//
//  Created by HOONHA CHOI on 2021/01/24.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var graph2 = Array(repeating: Array(repeating: 0, count: input[0]+1), count: input[0]+1)
var visitedQueue = Array(repeating: 0, count: input[0]+1)

for _ in 0..<input[1] {
    let edge = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = edge[0]
    let m = edge[1]
    graph2[n][m] = 1
    graph2[m][n] = 1
}

func BFS(vertex : Int,start: Int) -> String {
    var visitedQueue = Array(repeating: 0, count: vertex+1)
    visitedQueue[start] = 1
    var needvisits = [start]
    
    var result = ""
    while !needvisits.isEmpty {
        let x = needvisits.removeFirst()
        result += "\(x) "
        
        for i in 1...vertex {
            if visitedQueue[i] == 0 && graph2[x][i] == 1 {
                needvisits.append(i)
                visitedQueue[i] = 1
            }
        }
    }
    return result
}

func DFS(vertex : Int , start : Int) {
    visitedQueue[start] = 1
    print(start, separator:"" , terminator: " ")
    for i in 1...vertex {
        if visitedQueue[i] == 0 && graph2[start][i] == 1 {
            DFS(vertex: vertex, start: i)
        }
    }
}

DFS(vertex: input[0], start: input[2])
print()
print(BFS(vertex: input[0], start: input[2]))


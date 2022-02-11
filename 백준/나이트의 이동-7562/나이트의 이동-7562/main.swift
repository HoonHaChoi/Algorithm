//
//  main.swift
//  나이트의 이동-7562
//
//  Created by HOONHA CHOI on 2022/02/10.
//

import Foundation

struct NightIsMove {
    let n: Int
    let currnet: [Int]
    let arrive: [Int]
    
    let dx = [+2, +1, -1, -2, -2, -1, +1, +2]
    let dy = [+1, +2, +2, +1, -1, -2, -2, -1]
    
    var v: [[Int]] = []
    
    var q = Queue<[Int]>()
    var visited: [[Int]] = []
    
    mutating func solution() {
//        v = .init(repeating: .init(repeating: 0, count: n), count: n)
//        v[currnet[0]][currnet[1]] = 0
//        dfs(x: currnet[0], y: currnet[1])
        
        visited = .init(repeating: .init(repeating: 0, count: n), count: n)
        q.enqueue([currnet[0],currnet[1]])
        bfs()
        print(v[arrive[0]][arrive[1]])
    }
    
    mutating func dfs(x: Int, y: Int){
        for i in 0..<8 {
            if x == arrive[0] && y == arrive[1] {
                continue
            }
            let a = x + dx[i]
            let b = y + dy[i]
            
            if 0 <= a && a < n && 0 <= b && b < n {
                if v[a][b] == 0 || v[a][b] > v[x][y] + 1 {
                    v[a][b] = v[x][y] + 1
                    dfs(x: a, y: b)
                }
            }
        }
    }
    
    mutating func bfs() {
        while !q.isEmpty {
            guard let l = q.dequeue() else {
                continue
            }
            
            for i in 0..<8 {
                if l[0] == arrive[0] && l[1] == arrive[1] {
                    continue
                }
                let a = l[0] + dx[i]
                let b = l[1] + dy[i]
                
                if 0 <= a && a < n && 0 <= b && b < n {
                    if v[a][b] == 0 || v[a][b] > v[l[0]][l[1]] + 1 && visited[a][b] == 0{
                        v[a][b] = v[l[0]][l[1]] + 1
                        visited[a][b] = 1
                        q.enqueue([a,b])
                    }
                }
            }
        }
    }
}

struct Queue<T> {
    private var inputStack: [T] = []
    private var outputStack: [T] = []

    mutating func enqueue(_ value: T) {
        inputStack.append(value)
    }

    mutating func dequeue() -> T? {
        if outputStack.isEmpty {
            outputStack = inputStack.reversed()
            inputStack.removeAll()
        }
        return outputStack.popLast()
    }

    var isEmpty: Bool {
        return inputStack.isEmpty && outputStack.isEmpty
    }

    var peek: T? {
        return !outputStack.isEmpty ? outputStack.last : inputStack.first
    }

    var count: Int {
        return inputStack.count + outputStack.count
    }
}

let input = Int(readLine()!)!
for _ in 0..<input {
    let n = Int(readLine()!)!
    let currentLo = readLine()!.split(separator: " ").map { Int(String($0))! }
    let arriveLo = readLine()!.split(separator: " ").map { Int(String($0))! }
    var nim = NightIsMove(n: n, currnet: currentLo, arrive: arriveLo)
    nim.solution()
}

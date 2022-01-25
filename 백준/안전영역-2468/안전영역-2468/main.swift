//
//  main.swift
//  안전영역-2468
//
//  Created by HOONHA CHOI on 2022/01/26.
//

import Foundation

struct SafeZone {
    let n: Int
    let arr: [[Int]]
    var ch:[[Int]] = []
    
    var q = Queue<[Int]>.init()
    let dx = [-1,1,0,0]
    let dy = [0,0,1,-1]
    var cnt = 0
    var maxCnt = 0
    
    mutating func solution() -> String {
        ch = .init(repeating: .init(repeating: 0, count: n), count: n)
        let chClear: [[Int]] = .init(repeating: .init(repeating: 0, count: n), count: n)
        
        for z in 1...100 {
            for i in 0..<n {
                for j in 0..<n {
                    if arr[i][j] >= z && ch[i][j] == 0 {
//                        ch[i][j] = 1
//                        q.enqueue([i,j])
//                        bfs(h: z)
                        dfs(i: i, j: j, h: z)
                        cnt += 1
                    }
                }
            }

            if cnt == 0 {
                break
            }
            maxCnt = max(maxCnt, cnt)
            cnt = 0

            ch = chClear
        }

        return "\(maxCnt)"

    }
    
    mutating func dfs(i: Int, j: Int, h: Int) {
        ch[i][j] = 1
        
        for k in 0...3 {
            let x = i + dx[k]
            let y = j + dy[k]
            
            if 0 <= x && x < n && 0 <= y && y < n {
                if arr[x][y] >= h && ch[x][y] == 0 {
                    dfs(i: x, j: y, h: h)
                }
            }
        }
    }
    
    mutating func bfs(h: Int) {
        
        while !q.isEmpty {
            guard let l = q.dequeue() else { continue }
            
            for k in 0...3 {
                let x = l[0] + dx[k]
                let y = l[1] + dy[k]
                
                if 0 <= x && x < n && 0 <= y && y < n {
                    if arr[x][y] >= h && ch[x][y] == 0 {
                        ch[x][y] = 1
                        q.enqueue([x,y])
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

let n = Int(readLine()!)!
var arr: [[Int]] = []
for _ in 0..<n {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}
var sz = SafeZone(n: n, arr: arr)
print(sz.solution())

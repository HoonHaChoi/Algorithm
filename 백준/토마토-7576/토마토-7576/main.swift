//
//  main.swift
//  토마토-7576
//
//  Created by HOONHA CHOI on 2022/01/23.
//

import Foundation

struct Tomato {
    let n: Int
    let m: Int
    var arr: [[Int]]
    
    let dx = [-1,1,0,0]
    let dy = [0,0,-1,1]
    
    var q: [[Int]] = []
    var stackq = QueueDobule()
    var tmp: [[Int]] = []
    var cnt = -1
    mutating func solution() {
        for i in 0..<n {
            for j in 0..<m {
                if arr[i][j] == 1 {
                    stackq.enqueue(value: [i,j])
//                    q.append([i,j])
                }
            }
        }
//        bfs()
//        while !tmp.isEmpty {
//            bfs()
//            cnt+=1
//        }
        
        bfs3()
        
        if arr.flatMap({ $0 }).contains(0) {
            print(-1)
        } else {
            print(cnt)
        }
    }
    
    mutating func bfs() {
        
        if !tmp.isEmpty {
            q = tmp
            tmp.removeAll()
        }
        
        while !q.isEmpty {
            let l = q.removeLast()
            
            for i in 0...3 {
                let x = l[0] + dx[i]
                let y = l[1] + dy[i]
                
                if 0 <= x && x < n && 0 <= y && y < m {
                    if arr[x][y] == 0 && arr[x][y] != -1 {
                        arr[x][y] = 1
                        tmp.append([x,y])
                    }
                }
            }
        }
    }
    
    mutating func bfs3() {
        
        while !stackq.isEmpty() {
            cnt += 1
            for _ in 0..<stackq.count {
                guard let l = stackq.dequeue() else { continue }
                
                for i in 0...3 {
                    let x = l[0] + dx[i]
                    let y = l[1] + dy[i]
                    
                    if 0 <= x && x < n && 0 <= y && y < m {
                        if arr[x][y] == 0 && arr[x][y] != -1 {
                            arr[x][y] = 1
                            stackq.enqueue(value: [x,y])
                        }
                    }
                }
            }
        }
    }

    struct QueueDobule {
        var leftStack: [[Int]] = []
        var rightStack: [[Int]] = []
        
        mutating func enqueue(value: [Int]) {
            leftStack.append(value)
        }
        
        mutating func dequeue() -> [Int]? {
            if rightStack.isEmpty {
                rightStack = leftStack.reversed()
                leftStack.removeAll()
            }
            return rightStack.popLast()
        }
        
        mutating func isEmpty() -> Bool {
            return leftStack.isEmpty && rightStack.isEmpty
        }
        
        var count: Int {
            return leftStack.count + rightStack.count
        }
    }
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]
var arr: [[Int]] = []
for _ in 0..<m {
    arr.append(readLine()!.split(separator: " ").map { Int(String($0))! })
}
var t = Tomato(n: m, m: n, arr: arr)
t.solution()


// 이 코드에 문제점
// [3,5] 이후
// [2,5], [3,4] 들어오게 되면 [3,4] 주변인 [3,3], [2,4] q에 쌓임
// [2,5], [3,4] 이떄 포문은 2번만 실행되기 때문에 [2,5],[3,3],[2,4] 됐을때 [2,4]가 나가는 문제가 발생하여
// cnt가 정확히 돌지 않는 문제가 생겼음

// 해결 방법으로 doubleStack을 큐로 활용하여 [2,5],[3,3],[2,4] 일때 [2,5]가 빠지도록 함

//    mutating func bfs2() {
//
//        while !q.isEmpty {
//            cnt += 1
//            for _ in 0..<q.count {
//                let l = q.removeLast()
//
//                for i in 0...3 {
//                    let x = l[0] + dx[i]
//                    let y = l[1] + dy[i]
//
//                    if 0 <= x && x < n && 0 <= y && y < m {
//                        if arr[x][y] == 0 && arr[x][y] != -1 {
//                            arr[x][y] = 1
//                            q.append([x,y])
//                        }
//                    }
//                }
//            }
//        }
//    }

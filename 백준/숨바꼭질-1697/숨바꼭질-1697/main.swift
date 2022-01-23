//
//  main.swift
//  숨바꼭질-1697
//
//  Created by HOONHA CHOI on 2022/01/24.
//

import Foundation

struct HideAndSeek {
    let n: Int
    let k: Int
    
    lazy var ch: [Bool] = .init(repeating: false, count: 100001)
    
    var enqueue: [Int] = []
    var dequeue: [Int] = []
    
    var cnt = 0
    mutating func solution() {
        ch[n] = true
        dequeue.append(n)
        bfs2()
        print(cnt)
    }
    
    mutating func bfs2() {
        while ch[k] == false {

            let l = dequeue.removeLast()

            let mul = l*2
            let add = l+1
            let sub = l-1

            if [mul, add, sub].contains(k) {
                cnt += 1
                break
            }
            
            if 0 <= sub && sub <= 100000 && ch[sub] == false {
                ch[sub] = true
                enqueue.append(sub)
            }

            if l < k {
                if add <= 100000 && ch[add] == false {
                    ch[add] = true
                    enqueue.append(add)
                }
                if mul <= 100000 && ch[mul] == false {
                    ch[mul] = true
                    enqueue.append(mul)
                }
            }
            
            if dequeue.isEmpty{
                dequeue.append(contentsOf: enqueue)
                enqueue.removeAll()
                cnt += 1
            }
        }
    }
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var hs = HideAndSeek(n: input[0], k: input[1])
hs.solution()

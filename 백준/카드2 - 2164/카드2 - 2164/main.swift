//
//  main.swift
//  카드2 - 2164
//
//  Created by HOONHA CHOI on 2021/11/15.
//

import Foundation
// MARK: 카드2 - 2164 큐
struct Queue {
    var enqueue: [Int]
    var dequeue: [Int] = []
    
    var count: Int {
        return enqueue.count + dequeue.count
    }
    
    init(_ n: [Int]) {
        self.enqueue = n
    }
    
    mutating func push(_ n: Int) {
        enqueue.append(n)
    }
    
    mutating func pop() -> Int? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
}

let input = Int(readLine()!)!
var q = Queue((1...input).map{$0})

while q.count != 1 {
    _ = q.pop()
    if let card = q.pop() {
        q.push(card)
    }
}
print(q.pop()!)

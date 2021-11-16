//
//  main.swift
//  큐 - 10845
//
//  Created by HOONHA CHOI on 2021/11/16.
//

import Foundation

// MARK: 큐 - 10845
struct Queue {
    private var q: [Int] = []

    var size: Int {
        return q.count
    }

    var empty: Int {
        return q.isEmpty ? 1 : 0
    }

    var first: Int {
        if let f = q.first {
            return f
        }
        return -1
    }

    var back: Int {
        if let l = q.last {
            return l
        }
        return -1
    }

    mutating func push(_ n: Int) {
        q.append(n)
    }

    mutating func pop() -> Int {
        if q.first != nil {
            return q.removeFirst()
        }
        return -1
    }
}

let input = Int(readLine()!)!
var q: Queue = .init()


(0..<input).forEach { _ in
    let text = readLine()!.split(separator: " ").map { String($0) }
    let order = text[0]
    if order == "push" {
        q.push(Int(text[1])!)
    } else if order == "front" {
        print(q.first)
    } else if order == "back" {
        print(q.back)
    } else if order == "empty" {
        print(q.empty)
    } else if order == "pop" {
        print(q.pop())
    } else if order == "size" {
        print(q.size)
    }
}

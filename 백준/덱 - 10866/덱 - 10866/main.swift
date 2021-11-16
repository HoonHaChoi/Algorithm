//
//  main.swift
//  덱 - 10866
//
//  Created by HOONHA CHOI on 2021/11/16.
//

import Foundation
// MARK: 덱 - 10866
struct Deque {
    var deque: [Int] = .init()

    mutating func push(_ n: Int,_ direction: String) {
        if direction == "back" {
            deque.append(n)
        } else {
            deque.insert(n, at: 0)
        }
    }

    mutating func pop(_ direction: String) -> Int {
        if direction == "back" {
            return deque.popLast() ?? -1
        } else {
            if deque.first == nil {
                return -1
            } else {
                return deque.removeFirst()
            }
        }
    }

    var back: Int {
        return deque.last != nil ? deque.last! : -1
    }

    var front: Int {
        return deque.first != nil ? deque.first! : -1
    }

    var empty: Int {
        return deque.isEmpty ? 1 : 0
    }

    var size: Int {
        return deque.count
    }

}

let input = Int(readLine()!)!
var q: Deque = .init()

func textSlide(_ text: String) -> (Int?, String) {
    let text2 = text.split(separator: " ").map { String($0) }
    let direction = text2[0]
    let count: Int? = Int(text2[1])
    return (count, direction)
}

(0..<input).forEach { _ in
    let text = readLine()!.split(separator: "_").map { String($0) }
    let order = text[0]

    if order == "push" {
        let slide = textSlide(text[1])
        q.push(slide.0!, slide.1)
    } else if order == "front" {
        print(q.front)
    } else if order == "back" {
        print(q.back)
    } else if order == "empty" {
        print(q.empty)
    } else if order == "pop" {
        print(q.pop(text[1]))
    } else if order == "size" {
        print(q.size)
    }
}

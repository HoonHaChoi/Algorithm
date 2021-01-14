//
//  main.swift
//  스택-10828
//
//  Created by HOONHA CHOI on 2021/01/14.
//

import Foundation

struct Stack<T> {
    private var elements = Array<T>()
    
    init() {}
    
    mutating func pop() -> Int {
        if elements.isEmpty {
            return -1
        }
        return self.elements.popLast() as! Int
        
    }
    
    mutating func push(element : T) {
        return self.elements.append(element)
    }
    
    var empty : Int {
        if elements.isEmpty {
            return 1
        } else {
            return 0
        }
    }
    
    var size : Int {
        return self.elements.count
    }
    
    var top : Int {
        if elements.isEmpty {
            return -1
        } else {
            return elements.last as! Int
        }
    }
    
}

let input = Int(readLine()!)!
var stack = Stack<Int>()
for _ in 0..<input {
    let command = readLine()!.split(separator: " ").map { String($0) }
    
    if command[0] == "top" {
        print(stack.top)
    } else if command[0] == "size" {
        print(stack.size)
    } else if command[0] == "empty" {
        print(stack.empty)
    } else if command[0] == "pop" {
        print(stack.pop())
    } else if command[0] == "push" {
        stack.push(element: Int(command[1])!)
    }
}

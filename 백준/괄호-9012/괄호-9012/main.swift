//
//  main.swift
//  괄호-9012
//
//  Created by HOONHA CHOI on 2021/01/17.
//

import Foundation

/*
 6
 (())())
 (((()())()
 (()())((()))
 ((()()(()))(((())))()
 ()()()()(()()())()
 (()((())()(
 */

let input = Int(readLine()!)!
var ps = [String]()
for _ in 0..<input {
    ps.append(readLine()!)
}


struct Stack {
    private var elements = Array<String>()
    
    init() {}
    
    mutating func pop() -> String? {
        if elements.last == "(" {
            return elements.popLast()
        }
        elements.append(")")
        return nil
    }
    
    mutating func push(element : String) {
        return elements.append(element)
    }
    
    var result: Void {
        if elements.isEmpty {
            print("YES")
        } else {
            print("NO")
        }
    }
}
for i in ps {
    var stack = Stack()
    for j in i {
        if j == "(" {
            stack.push(element: String(j))
        } else {
            stack.pop()
        }
    }
    stack.result
}

/*
 NO
 NO
 YES
 NO
 YES
 NO
 */

//
//  main.swift
//  신규아이디추천
//
//  Created by HOONHA CHOI on 2021/01/30.
//

import Foundation

func match(text : String) -> [String] {
    do {
        let regex = try NSRegularExpression(pattern: "[a-z0-9A-Z_.-]", options: .caseInsensitive)
        let result = regex.matches(in: text, range: _NSRange(location: 0, length: text.count))
        return result.map { String(text[Range($0.range, in: text)!]) }}
    catch { return [] }}

func pointChain(_ newid : [String]) -> [String] {
    var id = [String]()
    for i in 0..<newid.count {
        if i != 0 && newid[i] == "." && newid[i-1] == "." {
            continue
        }
        id.append(newid[i])
    }
    return id
}


func solution(_ new_id:String) -> String {
    var newid = match(text: new_id)
    newid = newid.map { $0.lowercased() }
    newid = pointChain(newid)
    
    // 4단계
    if newid.first == "." {
        newid.removeFirst()
    }
    if newid.last == "." {
        newid.removeLast()
    }
    
    // 5단계
    if newid.isEmpty { newid.append("a") }
    
    // 6단계
    if newid.count >= 16 {
        newid = Array(newid[0...14])
        if newid.last == "." {
            newid.removeLast()
        }
    }
    
    //7단계
    if newid.count <= 2 {
        while newid.count != 3 {
            newid.append(newid.last!)
        }
    }

    return newid.joined()
}

//solution("...!@BaT#*..y.abcdefghijklm")
//solution("z-+.^.")
//solution("abcdefghijklmn.p")
//solution("=.=")

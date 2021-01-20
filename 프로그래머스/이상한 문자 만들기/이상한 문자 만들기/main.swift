//
//  main.swift
//  이상한 문자 만들기
//
//  Created by HOONHA CHOI on 2021/01/20.
//

import Foundation
func solution(_ s : String) -> String {
    let str = s.components(separatedBy: " ")
    var s = [String]()
    str.forEach {
        $0.enumerated().forEach {
            if $0.offset % 2 == 0 {
                s.append($0.element.uppercased())
            } else {
                s.append($0.element.lowercased())
            }
        }
        s.append(" ")
    }
    s.removeLast()
    return s.joined()
}

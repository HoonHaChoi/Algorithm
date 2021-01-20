//
//  main.swift
//  스킬트리
//
//  Created by HOONHA CHOI on 2021/01/20.
//

import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {

    var tree = [String]()
    tree = skill_trees.map { $0.filter { skill.contains($0) }}

    var r = [Bool]()
    tree.enumerated().forEach {
        r.append(skill.hasPrefix($0.element))
    }
    return r.filter { $0 }.count
}

//
//  main.swift
//  숫자 카드 10815
//
//  Created by HOONHA CHOI on 2021/01/13.
//

import Foundation

var input = Int(readLine()!)!
var cardN = readLine()!.split(separator: " ").map { Int(String($0))! }

var input2 = Int(readLine()!)!
var cardM = readLine()!.split(separator: " ").map { Int(String($0))! }

// Array contains 보단 Set contains 매우 빠르다
var cardNset = Set(cardN.sorted())

cardM.forEach { (i) in
    print(containsCheck(i), separator: "", terminator: " ")
}

func containsCheck(_ cardM : Int) -> Int {
    return cardNset.contains(cardM) ? 1 : 0
}

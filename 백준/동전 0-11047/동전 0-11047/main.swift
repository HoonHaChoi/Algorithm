//
//  main.swift
//  동전 0-11047
//
//  Created by HOONHA CHOI on 2021/01/19.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var money = input[1]
var coin = 0

var coins = [Int]()
(0..<input[0]).forEach { (_) in
    coins.append(Int(readLine()!)!)
}
coins = coins.sorted(by : >)

coins.forEach { (i) in
    coin += money / i
    money = money % i
}
print(coin)

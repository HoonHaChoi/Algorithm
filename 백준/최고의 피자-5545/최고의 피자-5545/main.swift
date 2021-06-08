//
//  main.swift
//  최고의 피자-5545
//
//  Created by HOONHA CHOI on 2021/06/08.
//

import Foundation

//최고의 피자-5545
let toppingCount = Int(readLine()!)!
let price = readLine()!.split(separator: " ").map { Int(String($0))! }
var doughPrice = price[0]
var toppingPrice = price[1]
let doughCal = Int(readLine()!)!

var doughsCal: [Int] = []

var result = 0
for _ in 0..<toppingCount {
    doughsCal.append(Int(readLine()!)!)
}
doughsCal = doughsCal.sorted()

for _ in 0...toppingCount {
    let dcPrice = doughsCal.count * toppingPrice
    let sumdC = Double(doughCal + doughsCal.reduce(0, +))
    let sumPrice = Double((doughPrice + dcPrice))
    
    if result < Int(sumdC / sumPrice) {
        result = Int(sumdC / sumPrice)
    }
    
    if !(doughsCal.isEmpty) {
        doughsCal.removeFirst()
    }
}
print(result)

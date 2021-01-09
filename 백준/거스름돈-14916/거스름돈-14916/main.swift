//
//  main.swift
//  거스름돈-14916
//
//  Created by HOONHA CHOI on 2021/01/09.
//

import Foundation

var input = Int(readLine()!)!
var coin = 0
var temp = 0
if input == 1 || input == 3 { //1,3은 할수없어 -1
    print(-1)
}

else if input % 5 == 0 {
    temp = input
    coin += temp / 5
    temp = temp % 5
}else if input % 2 == 0 {
    temp = input
    if temp % 10 > 5 {
        coin += (temp / 5) - 1
        temp = temp - (5 * coin)
    } else {
        coin += temp / 5
        temp = temp % 5
    }
    coin += temp / 2
    temp = temp % 2
} else {
    temp = input
     if temp % 10 > 5 {
        coin += temp / 5
        temp = temp % 5
    } else {
        coin += (temp / 5) - 1
        temp = temp - (5 * coin)
    }
    
    coin += temp / 2
    temp = temp % 2
}

if coin > 0 {
    print(coin)
}

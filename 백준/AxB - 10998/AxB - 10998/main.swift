//
//  main.swift
//  AxB - 10998
//
//  Created by HOONHA CHOI on 2021/11/15.
//

import Foundation

// MARK: AxB - 10998
print(readLine()!.split(separator: " ").map{ Int(String($0))! }.reduce(1, *))

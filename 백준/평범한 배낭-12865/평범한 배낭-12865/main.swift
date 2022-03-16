//
//  main.swift
//  평범한 배낭-12865
//
//  Created by HOONHA CHOI on 2022/03/16.
//

import Foundation

struct NormalBackpack {
    let n: Int
    let limitWeight: Int
    
    var stuff: [Stuff]
    var d: [[Int]] = []
    
    mutating func solution() {
        d = .init(repeating: .init(repeating: 0, count: limitWeight+1), count: n)
        
        stuff = stuff.sorted {
            $0.weight < $1.weight
        }
        
        for i in 0...limitWeight {
            if i >= stuff[0].weight {
                d[0][i] = stuff[0].value
            }
        }

        for i in 1..<stuff.count {
            for j in 0...limitWeight {
                if j < stuff[i].weight {
                    d[i][j] = d[i-1][j]
                }else {
                    d[i][j] = max(d[i-1][j], d[i-1][j - stuff[i].weight] + stuff[i].value)
                }

            }
        }
        print(d[n-1][limitWeight])
    }
    
    struct Stuff {
        let weight: Int
        let value: Int
    }
}

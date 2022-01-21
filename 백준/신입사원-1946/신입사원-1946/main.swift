//
//  main.swift
//  신입사원-1946
//
//  Created by HOONHA CHOI on 2022/01/22.
//

import Foundation

//let t = Int(readLine()!)!
let file = FileIO()
let t = file.readInt()

for _ in 0..<t {
    let n = file.readInt()
    var arr:[(Int,Int)] = []
    for _ in 0..<n {
        arr.append((file.readInt(),file.readInt()))
//        let temp = readLine()!.split(separator: " ").map { Int(String($0))! }
//        arr.append((temp[0], temp[1]))
    }
    
    var ne = NewEmployee(n: n, arr: arr)
    ne.solution()
}

struct NewEmployee {
    let n: Int
    var arr: [(Int,Int)]
        
    mutating func solution() {
        arr = arr.sorted { $0.0 < $1.0 }
    
        var minValue = arr[0].1
        var cnt = 1
        for i in 1..<n {
            if minValue > arr[i].1 {
                cnt += 1
                minValue = arr[i].1
            }
        }
        print(cnt)
    }
}

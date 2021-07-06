//
//  main.swift
//  수 찾기 - 1920
//
//  Created by HOONHA CHOI on 2021/07/06.
//

import Foundation
// MARK: 수 찾기 - 1920
let n = Int(readLine()!)!
let a = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted()
let m = Int(readLine()!)!
let f = readLine()!.split(separator: " ").map { Int(String($0))! }


func binarySearch(target: Int) -> Int {
    
    var s = 0
    var e = a.count-1
    
    while s <= e {
        let mid = (s+e)/2
        
        if a[mid] == target {
            return 1
        } else if a[mid] > target {
            e = mid-1
        } else {
            s = mid+1
        }
    }
    return 0
}

for i in f {
    print(binarySearch(target: i))
}

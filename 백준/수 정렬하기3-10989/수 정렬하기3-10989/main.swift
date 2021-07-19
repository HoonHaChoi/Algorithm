//
//  main.swift
//  수 정렬하기3-10989
//
//  Created by HOONHA CHOI on 2021/07/19.
//

import Foundation
// MARK: 수 정렬하기-10989
@available(OSX 10.15.4, *)
final class FileIO {
    private let buffer:[UInt8]
    private var index: Int = 0

    init(fileHandle: FileHandle = FileHandle.standardInput) {
        buffer = Array(fileHandle.readDataToEndOfFile())+[UInt8(0)]
    }

    @inline(__always) private func read() -> UInt8 {
        defer { index += 1 }
        return buffer[index]
    }

    @inline(__always) func readInt() -> Int {
        var sum = 0
        var now = read()
        var isPositive = true

        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }

        return sum * (isPositive ? 1:-1)
    }
}

if #available(macOS 10.15.4, *) {
    let file = FileIO()
    let n = file.readInt()
    
    var arr: [Int] = .init(repeating: 0, count: 10001)
    var str = ""
    for _ in 0..<n {
        let num = file.readInt()
        arr[num] += 1
    }
    
    for i in 1...10000 where arr[i] > 0 {
        str += String(repeating: "\(i)\n", count: arr[i])
    }
    print(str)
} else {}

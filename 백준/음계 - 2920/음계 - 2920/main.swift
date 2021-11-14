//
//  main.swift
//  음계 - 2920
//
//  Created by HOONHA CHOI on 2021/11/15.
//

import Foundation

// MARK: 음계 - 2920
enum scale {
    case ascending
    case descending
    case mixed

    var value: String {
        switch self {
        case .ascending:
            return "ascending"
        case .descending:
            return "descending"
        case .mixed:
            return "mixed"
        }
    }
}

func solutuion(_ list: [Int]) -> scale {
    let ascendingList = [1,2,3,4,5,6,7,8]
    let descendingList = [8,7,6,5,4,3,2,1]

    var result: scale = .ascending
    if input == ascendingList {
        result = .ascending
    } else if input == descendingList {
        result = .descending
    } else {
        result = .mixed
    }
    return result
}

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
print(solutuion(input).value)

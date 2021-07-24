//
//  main.swift
//  매칭 점수
//
//  Created by HOONHA CHOI on 2021/07/24.
//

import Foundation
// MARK: 매칭 점수
func regex(string: String, regex: String) -> [String] {
    
    do {
        let regex = try NSRegularExpression(pattern: regex, options: [.dotMatchesLineSeparators])
        let result = regex.matches(in: string, options:[], range: NSRange(string.startIndex..., in: string))
        return result.map {
            String(string[Range($0.range, in: string)!])
        }
    } catch {
        return []
    }
}

func solution(_ word:String, _ pages:[String]) -> Int {
    
    var dic: [String: (Int, Int, [String])] = [:]
    var basicLink:[String] = []
    
    for i in pages {
        let head = regex(string: i, regex:"<head>(.+)</head>")
        let url = regex(string: head[0], regex: "(?<=meta property=\"og:url\" content=\"https://)([^\"]+)")
        basicLink.append("\(url.joined())")
    
        let match = regex(string: i, regex: "(?<=<a href=\"https://)([^\"]+)")
    
        dic["\(url.joined())"] =
            (regex(string: i.lowercased(), regex: "[a-z]+").filter { $0 == word.lowercased() }.count,
                          regex(string: i, regex: "<a href=\"https:").count,
                          match)
    }
    
    var resultDic: [String: Double] = [:]
    
    for i in basicLink {
        resultDic[i] = Double(dic[i]!.0)
    }
    
    for i in basicLink {
        sum(s: dic[i]!.2, j: i)
    }
    
    func sum(s: [String], j: String) {
        for i in s {
            if resultDic.keys.contains(i) {
                resultDic[i]! += Double(dic[j]!.0) / Double(dic[j]!.1)
            }
        }
    }
    
    let max = resultDic.max { $0.value < $1.value }!.value
    let filt = resultDic.filter { $0.value == max }.keys

    let min = filt.min {
        basicLink.firstIndex(of: $0)! < basicLink.firstIndex(of: $1)!
    }!
    return basicLink.firstIndex(of: min)!
}

solution("blind", ["<html lang=\"ko\" xml:lang=\"ko\" xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n  <meta charset=\"utf-8\">\n  <meta property=\"og:url\" content=\"https://a.com\"/>\n</head>  \n<body>\nBlind Lorem Blind ipsum dolor Blind test sit amet, consectetur adipiscing elit. \n<a href=\"https://b.com\"> Link to b </a>\n</body>\n</html>", "<html lang=\"ko\" xml:lang=\"ko\" xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n  <meta charset=\"utf-8\">\n  <meta property=\"og:url\" content=\"https://b.com\"/>\n</head>  \n<body>\nSuspendisse potenti. Vivamus venenatis tellus non turpis bibendum, \n<a href=\"https://a.com\"> Link to a </a>\nblind sed congue urna varius. Suspendisse feugiat nisl ligula, quis malesuada felis hendrerit ut.\n<a href=\"https://c.com\"> Link to c </a>\n</body>\n</html>", "<html lang=\"ko\" xml:lang=\"ko\" xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n  <meta charset=\"utf-8\">\n  <meta property=\"og:url\" content=\"https://c.com\"/>\n</head>  \n<body>\nUt condimentum urna at felis sodales rutrum. Sed dapibus cursus diam, non interdum nulla tempor nec. Phasellus rutrum enim at orci consectetu blind\n<a href=\"https://a.com\"> Link to a </a>\n</body>\n</html>"])

solution("Muzi", ["<html lang=\"ko\" xml:lang=\"ko\" xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n  <meta charset=\"utf-8\">\n  <meta property=\"og:url\" content=\"https://careers.kakao.com/interview/list\"/>\n</head>  \n<body>\n<a href=\"https://programmers.co.kr/learn/courses/4673\"></a>#!MuziMuzi!)jayg07con&&\n\n</body>\n</html>", "<html lang=\"ko\" xml:lang=\"ko\" xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n  <meta charset=\"utf-8\">\n  <meta property=\"og:url\" content=\"https://www.kakaocorp.com\"/>\n</head>  \n<body>\ncon%\tmuzI92apeach&2<a href=\"https://hashcode.co.kr/tos\"></a>\n\n\t^\n</body>\n</html>"])

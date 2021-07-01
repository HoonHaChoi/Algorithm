// MARK: 주몽-1940
let stuffNum = Int(readLine()!)!
let armorNum = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }.sorted(by: <)

var start = 0
var end = numbers.count-1
var count = 0

var sum: (Int,Int) -> Int = { $0 + $1 }

while start<end {
    if sum(numbers[start],numbers[end]) == armorNum {
        start += 1
        end -= 1
        count += 1
    } else if sum(numbers[start],numbers[end]) > armorNum {
        end -= 1
    } else {
        start += 1
    }
}

print(count)

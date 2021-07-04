import Foundation

let xPoint = [
    "a": 1,
    "b": 2,
    "c": 3,
    "d": 4,
    "e": 5,
    "f": 6,
    "g": 7,
    "h": 8,
]

let steps = [(2,-1),(2,1),(-2,-1),(-2,1),(1,2),(-1,2),(1,-2),(-1,-2)]
var countStep = 0

let input = makeXY(readLine()!.map { String($0) })
func makeXY(_ s: [String]) -> (x: Int,y: Int) {
    return (xPoint[s[0]]!, Int(s[1])!)
}

for i in steps {
    if input.x + i.0 > 0 && input.x + i.0 < 9 &&
        input.y + i.1 > 0 && input.y + i.1 < 9 {
        countStep += 1
    }
}
print(countStep)

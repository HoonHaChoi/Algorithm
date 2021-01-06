
import Foundation
enum Color : String {
    case black
    case brown 
    case red
    case orange
    case yellow
    case green
    case blue
    case violet
    case grey
    case white
    
    func stringColorValue() -> String {
        switch self {
        case .black :
            return "0"
        case .brown :
            return "1"
        case .red :
            return "2"
        case .orange :
            return "3"
        case .yellow :
            return "4"
        case .green:
            return "5"
        case .blue:
            return "6"
        case .violet:
            return "7"
        case .grey:
            return "8"
        case .white:
            return "9"
        }
    }
}

let register1 = Color(rawValue: readLine() ?? "")
let register2 = Color(rawValue: readLine() ?? "")
let register3 = Color(rawValue: readLine() ?? "")

var registerAdd = (register1?.stringColorValue())! + (register2?.stringColorValue())!

print((Int(registerAdd))! * Int(pow(Double(10), Double(register3!.stringColorValue())!)))

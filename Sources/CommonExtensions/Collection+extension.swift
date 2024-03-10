//Copyright © 2024 Charles Kerr. All rights reserved.

import Foundation
public extension Array  where Element: BinaryInteger  {
    var myDescribe:String {
        var rvalue = ""
        for (index,entry) in self.enumerated() {
            var format = ",%@"
            if (index == 0) {
                format = "%@"
            }
            rvalue += String(format: format, entry.myDescribe)
        }
        return rvalue
    }
    
    func fromDescription(desribe:String) -> [Element] {
        var rvalue = [Element]()
        for entry in desribe.components(separatedBy: ",") {
            let trimmed = entry.trimmingCharacters(in: .whitespaces)
            let temp = IntegerLiteralType(trimmed) ?? IntegerLiteralType.zero
            rvalue.append(Self.Element(temp))
        }
        return rvalue
    }
}

public extension Array where Element: FloatingPoint  {
    var myDescribe:String {
        var rvalue = ""
        for (index,entry) in self.enumerated() {
            var format = ",%@"
            if (index == 0) {
                format = "%@"
            }
            rvalue += String(format: format, entry.myDescribe)
        }
        return rvalue
    }
    func fromDescription(desribe:String) -> [CGFloat] {
        var rvalue = [CGFloat]()
        for entry in desribe.components(separatedBy: ",") {
            let trimmed = entry.trimmingCharacters(in: .whitespaces)
            let temp = FloatLiteralType(trimmed) ?? FloatLiteralType.zero
            rvalue.append(temp)
        }
        return rvalue
    }
}


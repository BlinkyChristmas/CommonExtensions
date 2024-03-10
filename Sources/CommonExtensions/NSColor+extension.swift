//

import Foundation
import AppKit

extension NSColor : MyDescribe  {
    public func encode(to encoder: any Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(self.components)
    }
    
    static func decode(from decoder: any Decoder) throws ->NSColor  {
        
        let values = try decoder.singleValueContainer()
        let components = try values.decode([CGFloat].self)
        return NSColor(red: components[0], green: components[1], blue: components[2], alpha: components[3])
    }
    /*
    static func colorFromDescribe(describe:String) throws -> NSColor{
        let values = describe.components(separatedBy: ",")
        guard values.count == 4 else {
            throw NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey : "Invalid # of components(\(values.count)) in color"]?)
        }
     }
    */
    @objc dynamic var components:[CGFloat] {
        get {
            var temp = [CGFloat]()
            temp.append(self.redComponent)
            temp.append(self.greenComponent)
            temp.append(self.blueComponent)
            temp.append(self.alphaComponent)
            return temp
        }
    }
    
    public var myDescribe: String {
        let comp = self.components
        return comp.myDescribe
    }
}

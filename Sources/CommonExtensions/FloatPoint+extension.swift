//Copyright © 2024 Charles Kerr. All rights reserved.

import Foundation

extension FloatingPoint  {
    public var myDescribe:String {
        return String(format:"%.3f",self as! CVarArg)
    }
}


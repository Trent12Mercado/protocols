//
//  point struct.swift
//  protocol fun
//
//  Created by Mercado, Trenton Laurent on 9/20/20.
//  Copyright © 2020 Mercado, Trenton Laurent. All rights reserved.
//

import Foundation

struct Point: CustomStringConvertible, Equatable {
    var x: Double
    var y: Double
    var description: String {
        return "\(x), \(y)"
    }
    mutating func translate(byX: Double, byY: Double){
        x += byX
        y += byY
    }
    
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    //static means: associated with type, not the instance
    static func pointTester(){
        var origin = Point(x: 0, y:0)
        print(origin)
    }
}

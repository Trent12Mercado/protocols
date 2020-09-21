//
//  Circle.swift
//  protocol fun
//
//  Created by Mercado, Trenton Laurent on 9/20/20.
//  Copyright © 2020 Mercado, Trenton Laurent. All rights reserved.
//

import Foundation
// Swift has a comparable protocol
// it has one static method <(lhs:, rhs: ) -> Bool
//comparable inherits from equatable
//equatable has one static method ==(lhs:, rhs: ) -> Bool
struct Circle: CustomStringConvertible, Shape, Comparable {

    
    func computeArea() -> Double {
        return Double.pi * pow(radius, 2)
    }
    
    func computePerimeter() -> Double {
        return 2 * Double.pi * radius
    }
    //task: Define a rectanle struct to conform to Shape
    
    var center: Point
    var radius: Double
    var description: String {
        return "Circle with center at \(center) and radius of \(radius)"
    }
    
    init(center: Point, radius: Double) {
        self.center = center
        self.radius = radius
    }
    
    init() {
        self.center = Point(x: 0, y:0)
        self.radius = 1.0
    }
    
    static func <(lhs: Circle, rhs: Circle) -> Bool{
        return lhs.radius < rhs.radius
    }
    
    static func ==(lhs: Circle, rhs: Circle) -> Bool {
        return lhs.radius == rhs.radius && lhs.center == rhs.center
    }
    
    static func circleTester() {
        var circle1 = Circle()
        var circle2 = Circle(center: Point(x: 5.0, y: 10.0), radius: 12.0)
        // memberwise initalizer
        var circle3 = circle2
        //make an array
        var circles = [circle1, circle2, circle3, Circle(center: Point(x: 0, y: 0), radius:10.0)]
        print(circles)
        circles.sort()
        print(circles)
    }
    
}

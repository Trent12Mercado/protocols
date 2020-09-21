//
//  main.swift
//  protocol fun
//
//  Created by Mercado, Trenton Laurent on 9/20/20.
//  Copyright © 2020 Mercado, Trenton Laurent. All rights reserved.
//

import Foundation


Point.pointTester()
Circle.circleTester()

func shapeTester() {
    //task: declare some circles
    //then add them to a shape array
    // polymorphism - same code, different behavior
    //depending on the actual type or our shape objects
    //at run time, we will see different output, though our code is the same
    //iterate through each sahpe and print out its area and perimeter
    
    var circle1 = Circle()
    var circle2 = Circle(center: Point(x: 5.0, y: 10.0), radius: 12.0)
    var rectangle1 = Rectangle()
    var rectangle2 = Rectangle(length: 5.0, width: 10.0)
    var shapes = [Shape]()
    
    shapes.append(circle1)
    shapes.append(circle2)
    shapes.append(rectangle1)
    shapes.append(rectangle2)
    print(shapes)
    
    for shape in shapes {
        print(shape, shape.computeArea(), shape.computePerimeter())
    }
    
}
shapeTester()

//
//  Shape.swift
//  protocol fun
//
//  Created by Mercado, Trenton Laurent on 9/20/20.
//  Copyright © 2020 Mercado, Trenton Laurent. All rights reserved.
//

import Foundation

//a protocol is a set of rules or procedures that define how things are done
//protocols specify required properties/methods any type that conforms to the protocol has to have that property
//reasons to have protocols:
//they enable polymorphic behavior
//useful with APIs

protocol Shape {
    // all shapes should have a computeArea() and a computePerimeter()
    func computeArea() -> Double
    func computePerimeter() -> Double
}

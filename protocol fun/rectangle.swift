//
//  rectangle.swift
//  protocol fun
//
//  Created by Mercado, Trenton Laurent on 9/20/20.
//  Copyright © 2020 Mercado, Trenton Laurent. All rights reserved.
//

import Foundation

struct Rectangle: CustomStringConvertible, Shape {
    
    var length: Double
    var width: Double
    var description: String{
        return "Rectangle with length \(length) and width \(width)"
    }
    init(length: Double, width: Double){
        self.length = length
        self.width = width
    }
    init(){
        self.length = 1.0
        self.width = 1.0
    }
    
    func computeArea() -> Double {
        return length * width
    }
    
    
    func computePerimeter() -> Double{
        return (2 * length) + (2 * width)
    }
}

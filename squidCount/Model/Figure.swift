//
//  Figure.swift
//  squidCount
//
//  Created by user on 27.07.2022.
//

import Foundation

class Figure {
    var name = ""
    var imageName = ""
    
    var square: Double {
        0
    }
    
    var perimeter: Double {
        0
    }
}

class Circle: Figure {
    var radius: Double
    
    override var square: Double {
        .pi * radius * radius
    }
    
    override var perimeter: Double {
        .pi * radius * 2
    }
    
    init(radius: Double) {
        self.radius = radius
        super.init()
        self.name = "Circle"
    }
    
}

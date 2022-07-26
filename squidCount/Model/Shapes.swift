//
//  Shapes.swift
//  squidCount
//
//  Created by John Doe on 26/07/2022.
//

import Foundation

struct Rectangle {
    
    let width: Double
    let lenght: Double
    
    var area: Double {
        width * lenght
    }
    
    var perimeter: Double {
        2 * ( width + lenght)
    }
}

struct Triangle {
    
    let base: Double
    let height: Double
    
    var area: Double {
        base * height / 2
    }
// расчитать периметр треугольника по основанию и высоте невозможно, я написал формулу для расчета периметра равностороннего треугольника.
    
    var perimeter: Double {
        3 * base
    }
}

struct Circle {
    
    let radius: Double
    
    var area: Double {
        
        Double.pi * pow(radius, 2)
    }
    
    var perimeter: Double {
        
        2 * Double.pi * radius
        
    }
}





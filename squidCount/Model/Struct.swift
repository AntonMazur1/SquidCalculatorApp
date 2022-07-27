//
//  Struct.swift
//  squidCount
//
//  Created by user on 27.07.2022.
//

import Foundation

struct Circle {
    let name: String
    let imageName: String
    
    var radius: Double
    
    var square: Double {
        Double.pi * radius * radius
    }
    
    var perimeter: Double {
        Double.pi * radius * 2
    }
    
    static func getCircle() -> Circle {
        Circle(name: "Circle", imageName: "Circle", radius: 0)
    }
}

struct Rectangle {
    let name: String
    let imageName: String
    
    var height: Double
    var width: Double
    
    var square: Double {
        height * width
    }
    
    var perimeter: Double {
        2 * height * width
    }
    
    static func getRectangle() -> Rectangle {
        Rectangle(name: "Rectangle", imageName: "Rectangle", height: 0, width: 0)
    }
}

struct Triangle {
    let name: String
    let imageName: String
    
    var sideOne: Double
    var sideTwo: Double
    var sideThree: Double
    
    var square: Double {
        let p = ( sideOne + sideTwo + sideThree ) / 2
        return sqrt(( p * (p - sideOne) * ( p - sideTwo ) * ( p - sideThree )))
    }
    
    var perimeter: Double {
        sideOne + sideTwo + sideThree
    }
    
    static func getTriangle() -> Triangle {
        Triangle(name: "Triangle", imageName: "Triangle", sideOne: 0, sideTwo: 0, sideThree: 0)
    }

}


enum Shape {
    case rectangle
    case triangle
    case circle
}

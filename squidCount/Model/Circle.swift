//
//  Circle.swift
//  squidCount
//
//  Created by Sergejs Tiseļskis on 26/07/2022.
//
struct Circle {
    
    let name: String
    let imageName: String
    var radius: Double
    
    static func  getCircleData() -> Circle {
        
        Circle(
            name: "Circle",
            imageName: "circle",
            radius: 0
        )
    }
    var area: Double {
        
        Double.pi * radius * radius // не использую pow чтобы не грузить Foundation
        
    }
    var perimeter: Double {
        
        2 * Double.pi * radius
    }
    
}


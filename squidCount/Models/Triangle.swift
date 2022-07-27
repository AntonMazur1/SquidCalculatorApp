//
//  Triangle.swift
//  squidCount
//
//  Created by Sergejs Tiseļskis on 26/07/2022.
//
struct Triangle {
    
    let name: String
    let imageName: String
    var sideOne: Double
    var sideTwo: Double
    var sideThree: Double
    
    static func  getTriangleData() -> Triangle {
        
        Triangle(
            name: "Triangle",
            imageName: "triangle",
            sideOne: 0,
            sideTwo: 0,
            sideThree: 0
        )
    }
    var area: Double {
        
        let p = ( sideTwo + sideTwo + sideThree ) / 2
        return ( p * ( p - sideOne ) * ( p - sideTwo ) * ( p - sideThree )).squareRoot()
    }
    var perimeter: Double {
        sideOne + sideTwo + sideThree
    }
}

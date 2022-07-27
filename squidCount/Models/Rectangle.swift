//
//  Rectangle.swift
//  squidCount
//
//  Created by Sergejs Tiseļskis on 26/07/2022.
//

struct Rectangle {
    
    let name: String
    let imageName: String
    var width: Double
    var length: Double
    
    static func  getRectangleData() -> Rectangle {
        
        Rectangle(
            name: "Rectangle",
            imageName: "rectangle",
            width: 0,
            length: 0
            
        )
    }
    
    var area: Double {
        
        width * length
    }
    var perimeter: Double {
        
        2 * ( width * length )
    }
    
}


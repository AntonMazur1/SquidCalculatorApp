//
//  ViewController.swift
//  squidCount
//
//  Created by Клоун on 26.07.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "circle" {
            let squarePerimeterVC = segue.destination as! SquarePerimeterViewController
            squarePerimeterVC.figure = Circle.getCircleData()
        } else if segue.identifier == "triangle" {
            let squarePerimeterVC = segue.destination as! SquarePerimeterViewController
            squarePerimeterVC.figure = Triangle.getTriangleData().name
        } else if segue.identifier == "rectangle" {
            let squarePerimeterVC = segue.destination as! SquarePerimeterViewController
            squarePerimeterVC.figure = Rectangle.getRectangleData()
        } else {
            return
        }
    }
}


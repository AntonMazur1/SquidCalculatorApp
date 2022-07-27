//
//  CountViewController.swift
//  squidCount
//
//  Created by user on 27.07.2022.
//

import UIKit

class CountViewController: UIViewController {
    
    @IBOutlet var figureImageView: UIImageView!
    
    @IBOutlet var perimeterLabel: UILabel!
    @IBOutlet var squareLabel: UILabel!
    
    @IBOutlet var radiusTextField: UITextField!
    
    @IBOutlet var heightTextField: UITextField!
    @IBOutlet var widthTextField: UITextField!
    
    @IBOutlet var sideOneTextField: UITextField!
    @IBOutlet var sideTwoTextField: UITextField!
    @IBOutlet var sideThreeTextField: UITextField!
    
    
    @IBOutlet var triangleParameters: UIStackView!
    @IBOutlet var circleParameters: UIStackView!
    @IBOutlet var rectangleParameters: UIStackView!
    
    @IBOutlet var results: UIStackView!
    
    var shape: Shape = .triangle
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func countButtonTapped() {
        switch shape {
        case .circle:
            var figure = Circle.getCircle()
            figure.radius = Double(radiusTextField.text ?? "") ?? 0
            
            perimeterLabel.text = String(figure.perimeter)
            squareLabel.text = String(figure.square)
            
        case .rectangle:
            var figure = Rectangle.getRectangle()
            figure.height = Double(heightTextField.text ?? "") ?? 0
            figure.width = Double(widthTextField.text ?? "") ?? 0
            
            perimeterLabel.text = String(figure.perimeter)
            squareLabel.text = String(figure.square)
            
        default:
            var figure = Triangle.getTriangle()
            figure.sideOne = Double(sideOneTextField.text ?? "") ?? 0
            figure.sideTwo = Double(sideTwoTextField.text ?? "") ?? 0
            figure.sideThree = Double(sideThreeTextField.text ?? "") ?? 0
            
            perimeterLabel.text = String(figure.perimeter)
            squareLabel.text = String(figure.square)
        }
        
        results.isHidden = false
        view.endEditing(true)
    }
    
    
    func setupUI() {
        switch shape {
        case .circle:
            let figure = Circle.getCircle()
            title = figure.name
            figureImageView.image = UIImage(named: figure.imageName)
            circleParameters.isHidden.toggle()
            
        case .rectangle:
            let figure = Rectangle.getRectangle()
            title = figure.name
            figureImageView.image = UIImage(named: figure.imageName)
            rectangleParameters.isHidden.toggle()
            
        default:
            let figure = Triangle.getTriangle()
            title = figure.name
            figureImageView.image = UIImage(named: figure.imageName)
            triangleParameters.isHidden.toggle()
        }
    }
    
}

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
    

    @IBOutlet var radiusTextFIeld: UITextField!
    
    @IBOutlet var heightTextField: UITextField!
    @IBOutlet var widthTextField: UITextField!
    
    @IBOutlet var sideOneTextField: UITextField!
    @IBOutlet var sideTwoTextField: UITextField!
    @IBOutlet var sideThreeTextField: UITextField!
    
    
    @IBOutlet var triangleParameters: UIStackView!
    @IBOutlet var circleParameters: UIStackView!
    @IBOutlet var rectangleParameters: UIStackView!
    

    var shape: Shape!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func countButtonTapped() {
        
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

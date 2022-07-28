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
    
    var shape: Shape!
    var textFields: [UITextField] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        textFields = [radiusTextField, widthTextField, heightTextField, sideOneTextField, sideTwoTextField, sideThreeTextField]
        for textField in textFields {
            textField.delegate = self
        }
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
            
            perimeterLabel.text = String(format: "%.3f", figure.perimeter)
            squareLabel.text = String(format: "%.3f", figure.square)
        }
        
        results.isHidden = false
        view.endEditing(true)
    }
    
    private func setupUI() {
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
    
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            for textField in self.textFields {
                textField.text = ""
            }
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}

extension CountViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField.text != "" || string != "" {
            let value = (textField.text ?? "") + string
            return Double(value) != nil
        }
        return true
    }
}



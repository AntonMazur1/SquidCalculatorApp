//
//  ViewController.swift
//  squidCount
//
//  Created by Клоун on 26.07.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    
    var figure: Any = ""
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        guard let buttonIndex = buttons.firstIndex(of: sender) else { return }
        switch buttonIndex {
        case 0:
            figure = Circle.getCircleData()
        case 1:
            figure = Triangle.getTriangleData()
        case 2:
            figure = Rectangle.getRectangleData()
        default:
            return
        }
        showNextVC()
    }
    
    private func showNextVC() {
        performSegue(withIdentifier: "showCountVC", sender: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let countVC = segue.destination as! CountViewController else { return }
//        countVC.figure = figure
//    }
}


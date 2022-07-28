//
//  ViewController.swift
//  squidCount
//
//  Created by Клоун on 26.07.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!
    
    var figure: Shape!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        guard let buttonIndex = buttons.firstIndex(of: sender) else { return }
        switch buttonIndex {
        case 0:
            figure = Shape.circle
        case 1:
            figure = Shape.triangle
        case 2:
            figure = Shape.rectangle
        default:
            return
        }
        showNextVC()
    }
    
    private func showNextVC() {
        performSegue(withIdentifier: "showCountVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let countVC = segue.destination as? CountViewController else { return }
        countVC.shape = figure
    }
}


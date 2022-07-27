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
    @IBOutlet var radiusTextField: UILabel!
    
    var figure: Figure!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let circle = figure as? Circle else { return }
        circle.radius = 2
        title = figure.name
        figureImageView.image = UIImage(named: figure.imageName)
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    @IBAction func countButtonTapped() {
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}

//
//  ViewController.swift
//  Thndr
//
//  Created by Bailey Steele on 1/22/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setBackground()
        
    }
    
    // Set background based on time of day
    func setBackground() {
        let hour = Calendar.current.component(.hour, from: Date())
        switch hour {
        case 6...17:
            backgroundView.image = UIImage(named: "DayBackground")
        default:
            backgroundView.image = UIImage(named: "NightBackground")
        }
    }
}

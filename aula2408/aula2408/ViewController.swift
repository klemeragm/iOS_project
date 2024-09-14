//
//  ViewController.swift
//  aula2408
//
//  Created by iOS Lab on 24/08/24 by Klemer Monteiro
//
//


import UIKit

enum ButtonState {
    case count
    case reset
}


class ViewController: UIViewController {
    var count = 0
    var buttonState: ButtonState = .count

    @IBOutlet weak var counterLabel: UILabel!
    @IBOutlet weak var congratsLabel: UILabel!
    @IBOutlet weak var buttonReset: UIButton!
    @IBOutlet weak var buttonCount: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        congratsLabel.isHidden = true
        
    }

    @IBAction func dipTapCounterBotton(_ sender: UIButton) {
        switch buttonState {
        case .count:
             count += 1
        case .reset:
            count = 0
        }
        
        counterLabel.text = "count \(count)"
        
        if count >= 10 {
            congratsLabel.isHidden = false
            sender.titleLabel?.text = "Reset"
            buttonState = .reset
        }
    }
    
   
    @IBAction func buttonReset(_ sender: Any) {
        count = 0
        counterLabel.text = "Count \(count)"
        congratsLabel.isHidden = true
        congratsLabel.isEnabled = true
        congratsLabel.isEnabled = false
    }
    
        
}//end class controller

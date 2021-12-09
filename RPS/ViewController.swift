//
//  ViewController.swift
//  RPS
//
//  Created by user207919 on 11/29/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userGuess: UILabel!
    @IBOutlet weak var samGuess: UILabel!
    @IBOutlet weak var winner: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBAction func samGussed(_ sender: UIButton) {
        let tappedButton = sender.tag
        switch tappedButton{
        case 1:
            break
        case 2:
            break
        case 3:
            break
        default:
            print("Result unknown")
        }
    }
    
}


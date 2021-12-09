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
 
    enum Guess: String{
        case rock = "Rock"
        case paper = "Paper"
        case secissors = "secissors"
    }
    
    enum Winner: String{
        case user = "You won!"
        case sam = "Sam won!"
        case tie = "Tie!"
    }
    
    let Guesses:[Guess] = [.rock,.paper,.secissors]
    
    @IBAction func samGussed(_ sender: UIButton) {
        
        
        let tappedButton = sender.tag
        switch tappedButton{
        case 1:
            winner.text = (selectWinner(user: .rock, sam: GenerateSamGuess())).rawValue
        case 2:
            winner.text = (selectWinner(user: .paper, sam: GenerateSamGuess())).rawValue
        case 3:
            winner.text = (selectWinner(user: .secissors, sam: GenerateSamGuess())).rawValue
        default:
            print("Result unknown")
        }
    }
    func GenerateSamGuess() -> Guess{
        return Guesses.randomElement()!
    }
    func selectWinner(user: Guess, sam: Guess) -> Winner{
        userGuess.text = "You gussed: \(user.rawValue)"
        samGuess.text = "Sam gussed: \(sam.rawValue)"
        
        switch user{
            
        case .rock:
            if sam == .paper{
                return .user
            }else if sam == .secissors{
                return .sam
            }else{
                return .tie
            }
        case .paper:
            if sam == .secissors{
                return .user
            }else if sam == .rock{
                return .sam
            }else{
                return .tie
            }

        case .secissors:
            if sam == .rock{
                return .user
            }else if sam == .paper{
                return .sam
            }else{
                return .tie
            }

        }

    }
}


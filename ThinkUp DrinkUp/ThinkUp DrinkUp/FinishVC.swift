//
//  FinishVC.swift
//  ThinkUp DrinkUp
//
//  Created by Adam McBride on 6/27/18.
//  Copyright © 2018 Adam McBride Studios. All rights reserved.
//

import UIKit

class FinishVC: UIViewController {

    
    @IBOutlet weak var WinningPlayer: UILabel!
    @IBOutlet weak var CurrentRoundNumber: UILabel!
    
    @IBAction func PlayAgainButton(_ sender: Any) {
        
        // shift player names for the next round
        let retainer = playerNames[0]
        
        playerNames[0] = playerNames[1]
        playerNames[1] = playerNames[2]
        playerNames[2] = playerNames[3]
        playerNames[3] = retainer
        
    }
    
    @IBAction func NewGameButton(_ sender: Any) {
        
        // for a new game, these variables will need to be reinitialized
        // reset player names
        playerNames[0] = "Player 1"
        playerNames[1] = "Player 2"
        playerNames[2] = "Player 3"
        playerNames[3] = "Player 4"
        
        //reset round number
        roundNumber = 0
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        WinningPlayer.text = playerNames[answerPicked]
        
        if roundNumber < 24 {
            roundNumber = roundNumber + 1
        } else {
            roundNumber = 0
        }
        // Do any additional setup after loading the view.
        // the round number need to be converted from Int to String and set +1 due to indexing from 0
        let thisRoundNumber = String(roundNumber)
        CurrentRoundNumber.text = "Round: " + thisRoundNumber
        
    }
    

}

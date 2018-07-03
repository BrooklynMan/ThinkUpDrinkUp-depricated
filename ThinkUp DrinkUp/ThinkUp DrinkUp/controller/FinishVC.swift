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
        
        // for a new round, the names will need to be shifted in the name array, and the round number increased
        playerRefactor()
        
        performSegue(withIdentifier: "PlayAgainGRSegue", sender: self)
    }
    
    @IBAction func NewGameButton(_ sender: Any) {
        
        // for a new game, the game variables will need to be reinitialized
        playerReset()
        
        performSegue(withIdentifier: "StartOverVCSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refactorRound()

        // the round number need to be converted from Int to String and set +1 due to indexing from 0
        let thisRoundNumber = String(roundNumber)
        CurrentRoundNumber.text = "Round: " + thisRoundNumber
        
        WinningPlayer.text = playerNames[answerPicked]
    }
    
    func playerRefactor() {
        // shift player names for the next round
        let retainer = playerNames[0]
        
        playerNames[0] = playerNames[1]
        playerNames[1] = playerNames[2]
        playerNames[2] = playerNames[3]
        playerNames[3] = retainer
        
        // set the subject to the next player after the shift
        currentSubject = String(playerNames[0])
        
        // reset player and subject index references
        currentPlayerIndex = 1
    }
    
    func playerReset() {
        // reset player names
        playerNames[0] = "Player 1"
        playerNames[1] = "Player 2"
        playerNames[2] = "Player 3"
        playerNames[3] = "Player 4"
        
        //reset round number
        roundNumber = 0
        
        // reset player and subject index references
        currentPlayerIndex = 1
    }
    
    func refactorRound() {
        if roundNumber < 24 {
            roundNumber = roundNumber + 1
        } else {
            roundNumber = 0
        }
    }

    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */

}

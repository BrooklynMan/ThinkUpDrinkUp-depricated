//
//  NamesVC.swift
//  ThinkUp DrinkUp
//
//  Created by Adam McBride on 6/27/18.
//  Copyright © 2018 Adam McBride Studios. All rights reserved.
//

import UIKit

class NamesVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var FirstPlayerName: UITextField!
    @IBOutlet weak var SecondPlayerName: UITextField!
    @IBOutlet weak var ThirdPlayerName: UITextField!
    @IBOutlet weak var FourthPlayerName: UITextField!
    
    @IBAction func CommitPlayerNamesAndContinue(_ sender: AnyObject) {
        
        // commit player names to an array
        
        // assigns the text filed values to a variable
        let player1 = FirstPlayerName.text
        let player2 = SecondPlayerName.text
        let player3 = ThirdPlayerName.text
        let player4 = FourthPlayerName.text
        
        // assigns those variable values to specific positions in the array
        playerNames[0] = player1!
        playerNames[1] = player2!
        playerNames[2] = player3!
        playerNames[3] = player4!
        
        // now we need to randomize the player name index and choose one (0) as subject, and the other 3 as players as the players.
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // code to make the keyboard dissmissable in the player name fields
        FirstPlayerName.delegate = self
        SecondPlayerName.delegate = self
        ThirdPlayerName.delegate = self
        FourthPlayerName.delegate = self
    }
    
    // now, we make it so when a new line is detected in the text field, the app will dismiss the keyboard instead
    func textFieldShouldReturn(_ FirstPlayerName: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

}

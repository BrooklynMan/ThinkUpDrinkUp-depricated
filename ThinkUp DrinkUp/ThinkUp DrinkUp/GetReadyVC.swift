//
//  GetReadyVC.swift
//  ThinkUp DrinkUp
//
//  Created by Adam McBride on 6/27/18.
//  Copyright © 2018 Adam McBride Studios. All rights reserved.
//

import UIKit

class GetReadyVC: UIViewController {
    
    @IBOutlet weak var CurrentPlayerLabel: playerLabel!
    @IBOutlet weak var CurrentRoundNumber: playerLabel!
    @IBOutlet weak var GRPlayButton: bigButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        CurrentPlayerLabel.text = playerNames[currentPlayerIndex]
        
        // the round number need to be converted from Int to String and set +1 due to indexing from 0
        let thisRoundNumber = String(roundNumber + 1)
        CurrentRoundNumber.text = "Round: " + thisRoundNumber
    }
    
}

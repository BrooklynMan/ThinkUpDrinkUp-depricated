//
//  InstructionsVC.swift
//  ThinkUp DrinkUp
//
//  Created by Adam McBride on 6/27/18.
//  Copyright © 2018 Adam McBride Studios. All rights reserved.
//

import UIKit

class InstructionsVC: UIViewController {

    @IBOutlet weak var instructionsBox: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        instructionsBox.text = "The game is pretty simple! Just get THREE of your friends (the game requires four players), and enter your names. \n\nNext, you answer silly, short-answer questions about each other, passing the phone to each other between each answer. \n\nWhen you’re done, you pass the phone back to the main player, who chooses the best answer. \n\nThe winner takes a drink! \n\nAfter, you can play again with the same players, or start over with new players! \n\nHAVE FUN!"
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

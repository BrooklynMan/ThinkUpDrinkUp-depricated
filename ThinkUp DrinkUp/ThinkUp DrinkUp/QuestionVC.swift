//
//  QuestionVC.swift
//  ThinkUp DrinkUp
//
//  Created by Adam McBride on 6/27/18.
//  Copyright © 2018 Adam McBride Studios. All rights reserved.
//

import UIKit

class QuestionVC: UIViewController {

    @IBOutlet weak var PlayerAnswerBox: UITextView!
    @IBOutlet weak var QuestionBox: UITextView!
    @IBOutlet weak var QuestionAndRoundLabel: UILabel!
    
    @IBAction func CommitAnswerAndContinue(_ sender: Any) {
        
        // commit answer and continue
        
        if currentPlayerIndex < 3 {
            
            // submit the answer given to the answers array, then incriment the current player index before returning to the staging screen. repeat this twice, for all 3 players answering questions
            let answer = PlayerAnswerBox.text
            playerAnswers[currentPlayerIndex] = answer!
            
            currentPlayerIndex += 1
            
            // return to the staging screen for the next player to answer
            performSegue(withIdentifier: "getReadyVCSegue", sender: self)
            
        } else {
            
            // submit final the answer given to the answers array, then continue to the answer picker screen
            let answer = PlayerAnswerBox.text
            playerAnswers[currentPlayerIndex] = answer!
            
            // if all players have answered, go to the answer picker screen
            performSegue(withIdentifier: "AnswersVCSegue", sender: self)
            
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // populate the question box based on the round number
        QuestionBox.text = questions[roundNumber]
        
        // the round number  and question number need to be converted from Int to String and set +1 due to indexing from 0
        let thisRoundNumber = String(roundNumber + 1)
        let thisQuestionNumber = String(questionNumber + 1)
        QuestionAndRoundLabel.text = "Question: " + thisQuestionNumber + "Round: " + thisRoundNumber
    }

}

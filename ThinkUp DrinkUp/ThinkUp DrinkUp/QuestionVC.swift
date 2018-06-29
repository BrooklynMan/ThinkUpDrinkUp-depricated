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
            
            let answer = PlayerAnswerBox.text
            playerAnswers[currentPlayerIndex] = answer!
            
            currentPlayerIndex += 1
            
            performSegue(withIdentifier: "getReadyVCSegue", sender: self)
        } else {
        
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

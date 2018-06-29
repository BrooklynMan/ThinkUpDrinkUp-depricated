//
//  AnswersVC.swift
//  ThinkUp DrinkUp
//
//  Created by Adam McBride on 6/27/18.
//  Copyright © 2018 Adam McBride Studios. All rights reserved.
//

import UIKit

class AnswersVC: UIViewController {
    
    @IBOutlet weak var AnswerBoxText1: UITextView!
    @IBOutlet weak var AnswerBoxText2: UITextView!
    @IBOutlet weak var AnswerBoxText3: UITextView!
    
    
    @IBAction func AnswerButton1(_ sender: Any) {
        
        // set an indentifier to the answer picked
        answerPicked = 1
        
        // segue to the next ViewController
        performSegue(withIdentifier: "FinishVCSegue", sender: self)
    }
    
    @IBAction func AnswerButton2(_ sender: Any) {
        
        // set an indentifier to the answer picked
        answerPicked = 2
        
        // segue to the next ViewController
        performSegue(withIdentifier: "FinishVCSegue", sender: self)
    }
    
    @IBAction func AnswerButton3(_ sender: Any) {
        
        // set an indentifier to the answer picked
        answerPicked = 3
        
        // segue to the next ViewController
        performSegue(withIdentifier: "FinishVCSegue", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // populate the text fields with the given answers fromt he previous screens
        AnswerBoxText1.text = playerAnswers[0]
        AnswerBoxText2.text = playerAnswers[1]
        AnswerBoxText3.text = playerAnswers[2]
    }

}

//
//  QuestionViewController.swift
//  Period
//
//  Created by Pyettra Ferreira on 10/05/19.
//  Copyright © 2019 Pyettra Ferreira. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var questionBtn1: UIButton!
    @IBOutlet weak var questionBtn2: UIButton!
    @IBOutlet weak var questionBtn3: UIButton!
    @IBOutlet weak var questionBtn4: UIButton!
    @IBOutlet weak var explanationTxt: UITextView!
    
    
    @IBOutlet weak var tampon1: UIImageView!
    @IBOutlet weak var tampon2: UIImageView!
    @IBOutlet weak var tampon3: UIImageView!
    @IBOutlet weak var tampon4: UIImageView!
    @IBOutlet weak var tampon5: UIImageView!
    @IBOutlet weak var tampon6: UIImageView!
    
    
    let questions = Model.instance.questions
    var countQuestion = 0
    var countExplanation = 0
    var countAnswer = 0
    var correct = 0
    
    
    func refreshInterface() {
        isTheEnd(questionOfTurn: countQuestion)
        
        if countQuestion < 6 {
        
            let questionOfTurn = questions[countQuestion]
        
            questionLbl.text = questionOfTurn.txt
            questionBtn1.setTitle(questionOfTurn.answers[0], for: .normal)
            questionBtn2.setTitle(questionOfTurn.answers[1], for: .normal)
            questionBtn3.setTitle(questionOfTurn.answers[2], for: .normal)
            questionBtn4.setTitle(questionOfTurn.answers[3], for: .normal)
        
            showTampons(questionOfTurn: countQuestion)

        }
        
        countQuestion = countQuestion + 1
    }
    
    func refreshExplanation() {
        let explanationOfTurn = questions[countExplanation].explanation
        
        explanationTxt.text = explanationOfTurn
        
        countExplanation = countExplanation + 1
    }
    
    func checkAnswer(idx: Int) {
        let answerOfTurn = questions[countAnswer].rightAnswer
        
        if (idx == answerOfTurn) {
            correct = correct + 1
        }
        
        if countAnswer > 5 {
            questionBtn1.isEnabled = false
            questionBtn2.isEnabled = false
            questionBtn3.isEnabled = false
            questionBtn4.isEnabled = false
        }
        
        countAnswer = countAnswer + 1
    }
    
    @IBAction func choose1(_ sender: Any) {
        checkAnswer(idx: 0)
        refreshExplanation()
    }
    
    @IBAction func choose2(_ sender: Any) {
        checkAnswer(idx: 1)
        refreshExplanation()
    }
    
    
    @IBAction func choose3(_ sender: Any) {
        checkAnswer(idx: 2)
        refreshExplanation()
    }
    
    @IBAction func choose4(_ sender: Any) {
        checkAnswer(idx: 3)
        refreshExplanation()
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        refreshInterface()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func goNext(_ sender: Any) {
        refreshInterface()
        explanationTxt.text = ""
    }
    
    func isTheEnd(questionOfTurn: Int) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "results") as! ResultsViewController
        vc.correct = correct

        if questionOfTurn == 6 {
            self.present(vc, animated: true, completion: nil)
        }
    }
    
    func showTampons(questionOfTurn: Int) {
        switch questionOfTurn {
        case 0:
            tampon1.isHidden = false
            tampon2.isHidden = true
            tampon3.isHidden = true
            tampon4.isHidden = true
            tampon5.isHidden = true
            tampon6.isHidden = true
            
        case 1:
            tampon1.isHidden = false
            tampon2.isHidden = false
            tampon3.isHidden = true
            tampon4.isHidden = true
            tampon5.isHidden = true
            tampon6.isHidden = true
        
        case 2:
            tampon1.isHidden = false
            tampon2.isHidden = false
            tampon3.isHidden = false
            tampon4.isHidden = true
            tampon5.isHidden = true
            tampon6.isHidden = true
            
        case 3:
            tampon1.isHidden = false
            tampon2.isHidden = false
            tampon3.isHidden = false
            tampon4.isHidden = false
            tampon5.isHidden = true
            tampon6.isHidden = true
            
        case 4:
            tampon1.isHidden = false
            tampon2.isHidden = false
            tampon3.isHidden = false
            tampon4.isHidden = false
            tampon5.isHidden = false
            tampon6.isHidden = true
        
        case 5:
            tampon1.isHidden = false
            tampon2.isHidden = false
            tampon3.isHidden = false
            tampon4.isHidden = false
            tampon5.isHidden = false
            tampon6.isHidden = false
            
        default:
            tampon1.isHidden = false
            tampon2.isHidden = false
            tampon3.isHidden = false
            tampon4.isHidden = false
            tampon5.isHidden = false
            tampon6.isHidden = false
        }
        
    }

}

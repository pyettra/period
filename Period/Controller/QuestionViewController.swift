//
//  QuestionViewController.swift
//  Period
//
//  Created by Pyettra Ferreira on 10/05/19.
//  Copyright © 2019 Pyettra Ferreira. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {
    @IBOutlet weak var questionTxt: UITextView!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var questionBtn1: UIButton!
    @IBOutlet weak var questionBtn2: UIButton!
    @IBOutlet weak var explanationTxt: UITextView!
    @IBOutlet weak var tampon1: UIImageView!
    @IBOutlet weak var tampon2: UIImageView!
    @IBOutlet weak var tampon3: UIImageView!
    @IBOutlet weak var tampon4: UIImageView!
    @IBOutlet weak var tampon5: UIImageView!
    @IBOutlet weak var tampon6: UIImageView!
    @IBOutlet weak var tampon7: UIImageView!
    @IBOutlet weak var tampon8: UIImageView!
    @IBOutlet weak var tampon9: UIImageView!
    @IBOutlet weak var nextBtn: UIButton!
    
    let questions = Model.instance.questions
    var countQuestion = 0
    var countExplanation = 0
    var countAnswer = 0
    var correct = 0
    
    
    func refreshInterface() {
        isTheEnd(questionOfTurn: countQuestion)
        
        if countQuestion < 9 {
        
            let questionOfTurn = questions[countQuestion]
        
            questionTxt.text = questionOfTurn.txt
            questionBtn1.setTitle(questionOfTurn.answers[0], for: .normal)
            questionBtn2.setTitle(questionOfTurn.answers[1], for: .normal)
        

        }
        
        countQuestion = countQuestion + 1
        
        questionBtn1.isEnabled = true
        questionBtn2.isEnabled = true
        nextBtn.isEnabled = false
    }
    
    func refreshExplanation() {
        let explanationOfTurn = questions[countExplanation].explanation
        
        explanationTxt.text = explanationOfTurn
        
        questionBtn1.isEnabled = false
        questionBtn2.isEnabled = false
        nextBtn.isEnabled = true
        
        countExplanation = countExplanation + 1
        
        switch countExplanation {
        case 1:
            tampon1.image = UIImage(named: "tamponB")
        case 2:
            tampon2.image = UIImage(named: "tamponB")
        case 3:
            tampon3.image = UIImage(named: "tamponB")
        case 4:
            tampon4.image = UIImage(named: "tamponB")
        case 5:
            tampon5.image = UIImage(named: "tamponB")
        case 6:
            tampon6.image = UIImage(named: "tamponB")
        case 7:
            tampon7.image = UIImage(named: "tamponB")
        case 8:
            tampon8.image = UIImage(named: "tamponB")
        case 9:
            tampon9.image = UIImage(named: "tamponB")
        default:
            tampon1.image = UIImage(named: "tamponB")
        }
    }
    
    func checkAnswer(idx: Int) {
        let answerOfTurn = questions[countAnswer].rightAnswer
        
        if (idx == answerOfTurn) {
            correct = correct + 1
        }
        
        if countAnswer > 8 {
            questionBtn1.isEnabled = false
            questionBtn2.isEnabled = false
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

        if questionOfTurn == 9 {
            self.present(vc, animated: true, completion: nil)
        }
    }
    
//    func showTampons(questionOfTurn: Int) {
//        switch questionOfTurn {
//        case 0:
//            return
//        case 1:
//            tampon1.image = UIImage(named: "tamponB")
//
//        case 2:
//            tampon2.image = UIImage(named: "tamponB")
//
//        case 3:
//            tampon3.image = UIImage(named: "tamponB")
//
//        case 4:
//            tampon4.image = UIImage(named: "tamponB")
//
//        case 5:
//            tampon5.image = UIImage(named: "tamponB")
//
//        case 6:
//            tampon6.image = UIImage(named: "tamponB")
//
//        case 7:
//            tampon7.image = UIImage(named: "tamponB")
//
//        case 8:
//            tampon8.image = UIImage(named: "tamponB")
//
//        case 9:
//            tampon9.image = UIImage(named: "tamponB")
//
//        default:
//            tampon1.image = UIImage(named: "tamponB")
//
//        }
//
//    }

}

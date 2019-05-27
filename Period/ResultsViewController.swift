//
//  ResultsViewController.swift
//  Period
//
//  Created by Pyettra Ferreira on 21/05/19.
//  Copyright © 2019 Pyettra Ferreira. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var resultTxt: UITextView!
    
    var correct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showResults(correct: correct)
        scoreLbl.text = "\(correct) '\' 6 "
        
    }
    
    func showResults(correct: Int) {
        switch correct {
        case 0:
            resultTxt.text = "vc copnseguiu 0 parabens"
        case 1:
            resultTxt.text = "vc conseguiu 1"
        case 2:
            resultTxt.text = "vc conseguiu 2"
        case 3:
            resultTxt.text = "vc conseguiu 3"
        case 4:
            resultTxt.text = "vc conseguiu 4"
        case 5:
            resultTxt.text = "vc conseguiu 5"
        case 6:
            resultTxt.text = "vc conseguiu 6"
        default:
            resultTxt.text = ""
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

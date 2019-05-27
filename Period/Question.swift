//
//  Question.swift
//  Period
//
//  Created by Pyettra Ferreira on 10/05/19.
//  Copyright © 2019 Pyettra Ferreira. All rights reserved.
//

import Foundation
import UIKit

class Question {
    internal init(txt: String, rightAnswer: Int, explanation: String, answers: [String]) {
        self.txt = txt
        self.rightAnswer = rightAnswer
        self.explanation = explanation
        self.answers = answers
    }
    
    var txt: String
    var rightAnswer: Int
    var explanation: String
    var answers: [String]
    
}

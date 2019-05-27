
//  Model.swift
//  Period
//
//  Created by Pyettra Ferreira on 10/05/19.
//  Copyright © 2019 Pyettra Ferreira. All rights reserved.


import Foundation
import UIKit

class Model {

    static let instance = Model()

    private init() {
        question = UserDefaults.standard.integer(forKey: "question")
    }

    var question: Int{
        didSet{
            UserDefaults.standard.set(self.question, forKey: "question")
        }

    }

    let questions = [
        Question(txt: "pergunta 1", rightAnswer: 0, explanation: "explicação 1", answers: ["", "", "", ""]),
        Question(txt: "pergunta 2", rightAnswer: 1, explanation: "explicação 2", answers: ["", "", "", ""]),
        Question(txt: "pergunta 3", rightAnswer: 2, explanation: "explicação 3", answers: ["", "", "", ""]),
        Question(txt: "pergunta 4", rightAnswer: 3, explanation: "explicação 4", answers: ["", "", "", ""]),
        Question(txt: "pergunta 5", rightAnswer: 3, explanation: "explicação 5", answers: ["", "", "", ""]),
        Question(txt: "pergunta 6", rightAnswer: 2, explanation: "explicação 6", answers: ["", "", "", ""])
    ]
}

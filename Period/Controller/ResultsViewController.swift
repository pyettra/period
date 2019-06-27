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
        scoreLbl.text = "\(correct) of 9"
        
    }
    
    func showResults(correct: Int) {
        switch correct {
        case 0:
            resultTxt.text = "It seems like you a have a lot to learn about periods. But don’t worry, we have all been there! Menstruation is hard to understand and we still have a lot of research to do about it, so don’t feel ashamed. Just remember there’s a lot of myths that have been created around periods and those myths are the reason a lot of girls don’t know much about their own menstruations. We hope this quiz has taught you at least somethings about periods :). And hey! If you ever feel curious about this subject or want to talk about it with someone else, don't hesitate on consulting health care professionals, such as gynecologists."
        case 1:
            resultTxt.text = "It seems like you a have a lot to learn about periods. But don’t worry, we have all been there! Menstruation is hard to understand and we still have a lot of research to do about it, so don’t feel ashamed. Just remember there’s a lot of myths that have been created around periods and those myths are the reason a lot of girls don’t know much about their own menstruations. We hope this quiz has taught you at least somethings about periods :). And hey! If you ever feel curious about this subject or want to talk about it with someone else, don't hesitate on consulting health care professionals, such as gynecologists."
        case 2:
            resultTxt.text = "It seems like you a have a lot to learn about periods. But don’t worry, we have all been there! Menstruation is hard to understand and we still have a lot of research to do about it, so don’t feel ashamed. Just remember there’s a lot of myths that have been created around periods and those myths are the reason a lot of girls don’t know much about their own menstruations. We hope this quiz has taught you at least somethings about periods :). And hey! If you ever feel curious about this subject or want to talk about it with someone else, don't hesitate on consulting health care professionals, such as gynecologists."
        case 3:
            resultTxt.text = "You do know somethings about period, but there’s still a long way to fill this knowledge. We do know that menstruation is a difficult subject, given the amount of information we’ve been in touch from the begging of this century until now. Although we have a lot of information about it, periods still a huge mystery for most people. And hey, don’t feel bad about not knowing it all. Most women don’t :). So keep up with your studies and learn some more about menstruation and about your own cycle (if you do have one). Hope this quiz has opened your mind to some other aspects about periods that you didn’t know."
        case 4:
            resultTxt.text = "You do know somethings about period, but there’s still a long way to fill this knowledge. We do know that menstruation is a difficult subject, given the amount of information we’ve been in touch from the begging of this century until now. Although we have a lot of information about it, periods still a huge mystery for most people. And hey, don’t feel bad about not knowing it all. Most women don’t :). So keep up with your studies and learn some more about menstruation and about your own cycle (if you do have one). Hope this quiz has opened your mind to some other aspects about periods that you didn’t know."
        case 5:
            resultTxt.text = "You do know somethings about period, but there’s still a long way to fill this knowledge. We do know that menstruation is a difficult subject, given the amount of information we’ve been in touch from the begging of this century until now. Although we have a lot of information about it, periods still a huge mystery for most people. And hey, don’t feel bad about not knowing it all. Most women don’t :). So keep up with your studies and learn some more about menstruation and about your own cycle (if you do have one). Hope this quiz has opened your mind to some other aspects about periods that you didn’t know."
        case 6:
            resultTxt.text = "You do know somethings about period, but there’s still a long way to fill this knowledge. We do know that menstruation is a difficult subject, given the amount of information we’ve been in touch from the begging of this century until now. Although we have a lot of information about it, periods still a huge mystery for most people. And hey, don’t feel bad about not knowing it all. Most women don’t :). So keep up with your studies and learn some more about menstruation and about your own cycle (if you do have one). Hope this quiz has opened your mind to some other aspects about periods that you didn’t know."
        case 7:
            resultTxt.text = "Wow! Amazing! It seems like you know a lot about period's myths and facts. We know it is hard to understand all the issues that surrounds this subject and we appreciate that you have so much knowledge to share with others! We hope this quiz has opened your mind about somethings you might not know and we expect you to keep updating your knowledge about periods."
        case 8:
            resultTxt.text = "Wow! Amazing! It seems like you know a lot about period's myths and facts. We know it is hard to understand all the issues that surrounds this subject and we appreciate that you have so much knowledge to share with others! We hope this quiz has opened your mind about somethings you might not know and we expect you to keep updating your knowledge about periods"
        case 9:
            resultTxt.text = "Wow! Amazing! It seems like you know a lot about period's myths and facts. We know it is hard to understand all the issues that surrounds this subject and we appreciate that you have so much knowledge to share with others! We hope this quiz has opened your mind about somethings you might not know and we expect you to keep updating your knowledge about periods"
        default:
            resultTxt.text = ""
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}


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
        Question(txt: "''The blood loss can make you pass out''", rightAnswer: 1, explanation: "We have the idea that menstrual blood is so heavy that we can actually pass out. But the truth is that we only lose about two to three tablespoons of blood everytime we menstruate. Unless you get very heavy periods (also called menorrhagia), there’s nothing to worry about feeling weak. The feeling of weakness can actually come because of the PMS’s symptoms. Although, if you are one of those 10 ladies in 100 who get heavy periods and feel kind of dizzy, you should talk to your gynecologist and figure a way out to minimize this pain.", answers: ["FACT", "MYTH"]),
        Question(txt: "'''I shouldn’t exercise while having my period''", rightAnswer: 1, explanation: "Opposite from what people believe, girls can and should exercise while having their periods. Exercises can be the relieve necessary for cramps and they will help you boost the mood swings that sometimes come along with menstruation. Activities like pilates, yoga, swimming and stretching can help with body pains and also become an anti-stress method. The only thing we have to remember is to use protection, such as tampons, period proof underwear or menstrual cups.", answers: ["FACT", "MYTH"]),
        Question(txt: "''I can get pregnant if I have sex while menstruating''", rightAnswer: 0, explanation: "Although unlikely, it's possible to get pregnant during your period. In cases where the lady gets pregnant during period, she must have the ovulation phase occurring. This usually happens when the ovulation phase is so close to the end of the period that it gets quite easily for pregnancy to occur if there was an unprotected intercourse. We must also consider that women in general don’t have regular period cycles, and things can get blurry when we talk about ovulation phase. So, if you don’t want to use hormonal protection and don’t want to get pregnant, go for the physical protection, such as female or male condoms. It avoids not only unwanted pregnancy, but also sexually transmitted diseases. Hurray! Safe sex :D", answers: ["FACT", "MYTH"]),
        Question(txt: "''Chocolate can help during periods''", rightAnswer: 0, explanation: "Although dairy products may make you feel kind of bloated during your period, a little bit of chocolate can help with the anxiety emerged from this delicate time. The chocolate is also responsible to keep up with your mood swings during menstruation time. We must considerate that, during PMS, we have our levels of magnesium decreased. One of the ways to restore our magnesium’s level is to eat chocolate, given that this kind of fuel has a lot of magnesium in its composition. So, eating chocolate gives you the pleasure and comfort necessary to face the symptoms of menstruation.", answers: ["FACT", "MYTH"]),
        Question(txt: "''Women gain weight during their periods''", rightAnswer: 1, explanation: "Women don’t gain weight during their periods. What actually happens is that menstrual time causes bloating due to reduced levels of progesterone. When women are about to menstruate, progesterone decreases and the body begins to retain more water and salt. So, when women say that they fell “more heavier” during their periods, it is actually a side effect of more water entering their cells and not fat itself. Some advice given for those “bloated times” is to drink lots of water, exercise and eat healthier than ever (especially decreasing levels of salt ingestion).", answers: ["FACT", "MYTH"]),
        Question(txt: "''I shouldn’t wash my hair during period''", rightAnswer: 1, explanation: "Some people may say that washing your hair during your period may increase your menstruation flow, but that's not true. Since there's no scientific evidence saying that, there’s absolutely no reason not to wash your hair during periods. It actually can help women in their periods to relieve from menstrual cramps and anxiety. A good and warm bath is always welcome :)", answers: ["FACT", "MYTH"]),
        Question(txt: "''I shouldn’t go swimming during periods''", rightAnswer: 1, explanation: "This myth is based on the times we didn’t have access to information and technology about tampons and menstrual cups that we have now. It was created due to hygiene concerns to go swimming without feminine protection. Since we've been in touch with so much information about periods, there's nothing to worry about when it comes to swimming while having your period. You should choose your best protection method (menstrual cups or tampons) and have fun in the pool. In addition to the entertainment, you'll also relax with the hydrotherapy effect that swimming provides. Just don't forget to change your swimsuit right after leaving the water, since humid places are the best enviroment for funghi proliferation.", answers: ["FACT", "MYTH"]),
        Question(txt: "''It’s OK to have sex during my period''", rightAnswer: 0, explanation: "It’s perfectly OK for women to have sex during their periods. Like most myths, this one comes from long religious traditions that prohibits sex during menstruation. Some women may feel uncomfortable having sex during this time of the month due to PMS's cramps and body aches. Anyway, if you feel comfortable, there's no problem at all. Just remeber to always use protection, especially during periods. They are the most delicate time for the woman's body when it comes to immunity. If done with protection, there’s no healthy risk associated with sex during periods.", answers: ["FACT", "MYTH"]),
        Question(txt: "''Girls shouldn’t use tampons during their first periods''", rightAnswer: 1, explanation: "This myth comes along from religious tradition. Some people still believe that tampons take away virginity from girls who are having their first period by breaking the hymn. Opposite from that, it's already accepted in the scientific community that the virginity concept is not associated  with penetration. Besides that, tampons are safe and made especially for times of period. Methods like tampons and menstrual cups can interfere with hymen as much as doing yoga, dancing, riding a bike - living a normal life. If the hymen was ripped because of anything else than having sex, it does not mean the woman has lost her virginity in the most common understanding of the concept of virginity.", answers: ["FACT", "MYTH"])
    ]
}

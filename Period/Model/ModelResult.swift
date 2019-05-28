//
//  ModelResult.swift
//  Period
//
//  Created by Pyettra Ferreira on 22/05/19.
//  Copyright © 2019 Pyettra Ferreira. All rights reserved.
//

import Foundation
import UIKit

class ModelResult {
    
    static let instance = ModelResult()
    
    private init() {
        result = UserDefaults.standard.integer(forKey: "result")
    }
    
    var result: Int{
        didSet{
            UserDefaults.standard.set(self.result, forKey: "result")
        }
    }
    
    let results = [
        Result(result: "result 1"),
        Result(result: "result 2"),
        Result(result: "result 3")
    ]
}


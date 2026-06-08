//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Batuhan Ham on 5.06.2026.
//  Copyright © 2026 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let rightAnswer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.text = q
        self.answer = a
        self.rightAnswer = correctAnswer
    }
    
}
